import 'package:flutter/material.dart';
import 'package:parking_finder/core/theme/app_theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Header
            Center(
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: AppTheme.primaryColor.withOpacity(0.2),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.person,
                      size: 50,
                      color: AppTheme.primaryColor,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'John Doe',
                    style: TextStyle(
                      fontSize: AppTheme.headlineSmall,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'john@example.com',
                    style: TextStyle(
                      fontSize: AppTheme.bodyMedium,
                      color: AppTheme.textSecondaryColor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),

            // Profile Information
            _buildSection('Account Information'),
            _buildListTile('Email', 'john@example.com'),
            _buildListTile('Phone', '+1 (555) 123-4567'),
            _buildListTile('Member Since', 'December 2025'),

            const SizedBox(height: 24),
            _buildSection('Preferences'),
            _buildListTile('Notifications', '',
                trailing: const Icon(Icons.toggle_on)),
            _buildListTile('Language', 'English',
                trailing: const Icon(Icons.arrow_forward)),
            _buildListTile('Theme', 'Light',
                trailing: const Icon(Icons.arrow_forward)),

            const SizedBox(height: 24),
            _buildSection('Support'),
            _buildListTile('About', '',
                trailing: const Icon(Icons.arrow_forward)),
            _buildListTile('Help & Support', '',
                trailing: const Icon(Icons.arrow_forward)),
            _buildListTile('Terms & Conditions', '',
                trailing: const Icon(Icons.arrow_forward)),

            const SizedBox(height: 32),

            // Logout Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTheme.errorColor,
                ),
                onPressed: () {
                  // TODO: Implement logout
                },
                child: const Text('Logout'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: AppTheme.bodyLarge,
        fontWeight: FontWeight.w600,
        color: AppTheme.textPrimaryColor,
      ),
    );
  }

  Widget _buildListTile(String title, String subtitle, {Widget? trailing}) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 8),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: AppTheme.bodyMedium,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: subtitle.isNotEmpty ? Text(subtitle) : null,
      trailing: trailing,
      onTap: () {
        // TODO: Handle navigation/actions
      },
    );
  }
}
