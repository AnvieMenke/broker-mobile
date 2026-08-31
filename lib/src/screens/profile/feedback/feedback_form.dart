import 'package:broker_mobile/components/containers/page_container.dart';
import 'package:broker_mobile/components/dropdowns/select_page.dart';
import 'package:flutter/material.dart';
import '../../../../components/buttons/button.dart';
import '../../../../components/messages/notification.dart';
import '../../../../service/contact_us_service.dart';
import '../../../../service/convert_service.dart';
import '../../../../utils/fmt/fmt.dart';

class FeedbackForm extends StatefulWidget {
  final Map<String, dynamic>? initialFormData;

  const FeedbackForm({super.key, this.initialFormData});

  @override
  State<FeedbackForm> createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {
  final _subjectController = TextEditingController();
  final _feedbackController = TextEditingController();

  late Map<String, dynamic> formData;
  bool _isSubmitting = false;
  bool isEdit = false;

  @override
  void initState() {
    super.initState();

    formData = {
      "subject": "",
      "pageName": "",
      "pageComponent": "",
      "description": "",
      "contactUsId": 0,
      "status": "Pending",
      ...?widget.initialFormData,
    };
    _subjectController.text = formData["subject"] ?? "";
    _feedbackController.text = formData["description"] ?? "";
    if (ConvertService.safeInt(formData["contactUsId"]) != 0) {
      setState(() {
        isEdit = true;
      });
    }
  }

  @override
  void dispose() {
    _subjectController.dispose();
    _feedbackController.dispose();
    super.dispose();
  }

  void _handleSubmit() async {
    final feedbackService = ContactUsService();

    formData["subject"] = _subjectController.text.trim();
    formData["description"] = _feedbackController.text.trim();

    if (formData["subject"].isEmpty) {
      return Notify.warning('Please enter a subject.');
    }
    if (formData["description"].isEmpty) {
      return Notify.warning('Please enter your feedback.');
    }
    if ((formData["pageName"] ?? '').trim().isEmpty) {
      return Notify.warning('Please select a page.');
    }

    String confirmationMessage = isEdit
        ? "Are you sure you want to update this feedback?"
        : "Are you sure you want to submit this feedback?";
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Confirm Submission"),
        content: Text(confirmationMessage),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text("Cancel"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text("Yes"),
          ),
        ],
      ),
    );

    if (confirmed != true) return;

    setState(() => _isSubmitting = true);
    try {
      if (isEdit) {
        await feedbackService.update(formData);
        Notify.success('Feedback updated successfully.');
      } else {
        await feedbackService.create(formData);
        Notify.success('Feedback submitted successfully.');
      }

      if (!mounted) return;
      Navigator.of(context).pop(true);
    } catch (err) {
      Notify.error(
          "Failed to submit feedback. ${FormatUtils.cleanErrorMessage(err)}");
    } finally {
      setState(() => _isSubmitting = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      title: "Send us feedback",
      showBack: true,
      scrollable: true,
      padding: true,
      page: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Subject',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 6),
            TextField(
              enabled: !isEdit,
              controller: _subjectController,
              decoration: const InputDecoration(
                hintText: "Subject",
              ),
            ),
            const SizedBox(height: 16),
            SelectPage(
              label: "Page",
              placeholder: "Select Page",
              value: formData["pageName"],
              onChange: (map) => setState(() {
                debugPrint(map.toString());

                formData["pageName"] = map?["data"]["pageName"] ?? '';

                formData["pageComponent"] = map?["data"]["pageComponent"] ?? '';
              }),
            ),
            const SizedBox(height: 16),
            const Text(
              'Feedback',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 6),
            TextField(
              maxLines: 15,
              controller: _feedbackController,
              keyboardType: TextInputType.multiline,
              decoration: const InputDecoration(
                hintText: 'Write your feedback...',
                alignLabelWithHint: true,
              ),
            ),
            if (isEdit) ...[
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                initialValue: formData["status"],
                items: const [
                  DropdownMenuItem(
                    value: "Pending",
                    child: Text("Pending"),
                  ),
                  DropdownMenuItem(
                    value: "Cancelled",
                    child: Text("Cancelled"),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    formData["status"] = value;
                  });
                },
                decoration: const InputDecoration(
                  labelText: "Status",
                ),
              ),
            ],
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.center,
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 200,
                ),
                child: Button(
                  label: 'Submit',
                  onPressed: _handleSubmit,
                  isLoading: _isSubmitting,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
