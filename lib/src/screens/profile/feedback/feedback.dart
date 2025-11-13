import 'package:broker_mobile/components/containers/page_list_container.dart';
import 'package:broker_mobile/service/contact_us_service.dart';
import 'package:broker_mobile/src/screens/profile/feedback/feedback_form.dart';
import 'package:broker_mobile/utils/theme/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:broker_mobile/components/grid/grid_view_card.dart';

import '../../../../components/buttons/button.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({super.key});

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  Future<List<GridItem>>? _futureRequests;

  late Map<String, dynamic> queryData = {
    "status": "",
  };

  late final ValueNotifier<int> queryDataNotifier;

  GridPagination pagination = GridPagination(
    pageNo: 0,
    rowsPerPage: 100,
    totalRows: 0,
    reload: true,
  );

  @override
  void initState() {
    super.initState();
    queryDataNotifier = ValueNotifier(0);
    _init();
  }

  void _init() async {
    setState(() {
      _futureRequests = _fetchFeedbacks();
    });
  }

  Future<List<GridItem>> _fetchFeedbacks() async {
    final feedbackService = ContactUsService();
    final resp = await feedbackService.listContactUs(queryData, {
      'pageNo': pagination.pageNo,
      'rowsPerPage': pagination.rowsPerPage,
    });
    setState(() {
      pagination = pagination.copyWith(
        totalRows: resp.summary.totalRows,
        reload: false,
      );
    });
    return resp.contactUs.map((e) {
      return GridItem.fromMap({
        "contactUsId": {
          "label": "Contact Us ID",
          "value": e.contactUsId,
          "visible": false,
          "hideDetails": true,
        },
        "pageName": {
          "label": "Page",
          "value": e.pageName,
          "visible": false,
        },
        "subject": {
          "label": "Subject",
          "value": e.subject,
          "visible": true,
          "gridPosition": "title",
        },
        "description": {
          "label": "Description",
          "value": e.description,
          "visible": false,
        },
        "lastUpdate": {
          "label": "Last Update",
          "value": e.modifiedAt,
          "type": "dateTime",
          "visible": true,
          "gridPosition": "subTitle",
        },
        "status": {
          "label": "Status",
          "value": e.status,
          "visible": true,
          "type": "status",
          "gridPosition": "rightTitle",
        },
        "pageComponent": {
          "label": "Component",
          "value": e.pageComponent,
          "visible": false,
          "hideDetails": true,
        },
      });
    }).toList();
  }

  void _onPageChange(GridPagination newPagination) {
    setState(() {
      pagination = newPagination;
      _futureRequests = _fetchFeedbacks();
    });
  }

  Future<void> _refresh() async {
    setState(() {
      _futureRequests = _fetchFeedbacks();
    });
    await _futureRequests;
  }

  @override
  Widget build(BuildContext context) {
    return PageListContainer(
      title: "Feedback",
      onRefresh: _refresh,
      page: _futureRequests == null
          ? AppTheme.buildLoadingIndicator()
          : FutureBuilder<List<GridItem>>(
              future: _futureRequests,
              builder: (context, snapshot) {
                Widget body;
                if (snapshot.connectionState == ConnectionState.waiting) {
                  body = AppTheme.buildLoadingIndicator();
                } else {
                  body = GridWithPagination(
                    items: snapshot.data!,
                    pagination: pagination,
                    onPageChange: _onPageChange,
                    onRefresh: _refresh,
                    actionsBuilder: (ctx, item) {
                      final statusField = item.fields.firstWhere(
                        (f) => f.keyName == "status",
                        orElse: () => GridField(
                          keyName: '',
                          label: '',
                          value: '',
                        ),
                      );

                      return [
                        if (["Pending"].contains(statusField.value))
                          PopupMenuItem(
                            value: "edit",
                            child: const Text("Edit"),
                            onTap: () {
                              WidgetsBinding.instance.addPostFrameCallback((_) {
                                final Map<String, dynamic> formData = {
                                  for (var f in item.fields) f.keyName: f.value,
                                };
                                Navigator.push(
                                  ctx,
                                  MaterialPageRoute(
                                    builder: (context) => FeedbackForm(
                                      initialFormData: formData,
                                    ),
                                  ),
                                ).then((value) {
                                  if (value == true) {
                                    setState(() {
                                      _futureRequests = _fetchFeedbacks();
                                    });
                                  }
                                });
                              });
                            },
                          ),
                      ];
                    },
                  );
                }

                return Scaffold(
                  body: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(
                              maxWidth: 200,
                            ),
                            child: Button(
                              label: 'Send feedback',
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => FeedbackForm(),
                                  ),
                                ).then((value) {
                                  if (value == true) {
                                    setState(() {
                                      _futureRequests = _fetchFeedbacks();
                                    });
                                  }
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Expanded(child: body),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
