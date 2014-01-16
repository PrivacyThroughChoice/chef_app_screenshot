Feature: Test all the devops

  In order to be super effective
  As an infrastructure engineer
  I want to use all the awesome tools

Background:

  Given I have provisioned the following infrastructure:
  | Server Name         | Operating System    | Version   | Chef Version    | Run List         |
  | thunr_chef_app_screenshot-ubuntu-1204 | ubuntu              | 12.04     | 11.8.0          | thunr_chef_app_screenshot::default |
  | thunr_chef_app_screenshot-centos-64   | centos              | 6.4       | 11.8.0          | thunr_chef_app_screenshot::default |
  And I have run Chef

Scenario: System has bash
  When I look for "bash"
  Then I should see "/bin/bash"
