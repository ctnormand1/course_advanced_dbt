# Bingeflix Docs
This file contains docs blocks for Bingeflix sources.


## Common Fields
This section contains documentation on fields common to many tables.

{% docs bingeflix_created_at %}
The timestamp at which the record was created.
{% enddocs %}

{% docs bingeflix_deleted_at %}
The timestamp at which the record was deleted (NULL if the record has not been deleted).
{% enddocs %}


## Events
This section contains documentation for the Bingeflix `events` table. 

{% docs bingeflix_table_events %}
This table contains information about the behavioral events of users while they interact with the Bingeflix platform.
{% enddocs %}

{% docs bingeflix_event_id %}
The unique identifier of the event.
{% enddocs %}

{% docs bingeflix_event_name %}
The name of the event.
{% enddocs %}

{% docs bingeflix_session_id %}
The unique identifier of the session in the Bingeflix application.
{% enddocs %}


## Subscriptions
This section contains documentation for the Bingeflix `subscriptions` table.

{% docs bingeflix_table_subscriptions %}
This table contains information about Bingeflix subscriptions.
{% enddocs %}

{% docs bingeflix_ends_at %}
Timestamp at which the subscription ends (NULL if subscription is active).
{% enddocs %}

{% docs bingeflix_starts_at %}
Timestamp at which the subscription started.
{% enddocs %}

{% docs bingeflix_subscription_id %}
Unique identifier of the subscription.
{% enddocs %}


## Subscription Plans
This section contains documentatgion from the Bingeflix `subscription_plans` table.

{% docs bingeflix_table_subscription_plans %}
This table contains information about various subscription plans available on Bingeflix.
{% enddocs %}

{% docs bingeflix_billing_period %}
The recurring billing period for the subscription.
{% enddocs %}

{% docs bingeflix_payment_period %}
The recurring payment period for the subscription.
{% enddocs %}

{% docs bingeflix_plan_name %}
The name of the subscription plan.
{% enddocs %}

{% docs bingeflix_pricing %}
The price of the subscription.
{% enddocs %}

{% docs bingeflix_subscription_plan_id %}
Unique identifier of the subscription plan.
{% enddocs %}


## Users
This section contains documentation from the Bingeflix `users` table.

{% docs bingeflix_table_users %}
This table contains information about Bingeflix users.
{% enddocs %}

{% docs bingeflix_birthdate %}
The user's birthdate.
{% enddocs %}

{% docs bingeflix_country %}
The user's country of residence.
{% enddocs %}

{% docs bingeflix_email %}
The user's email address.
{% enddocs %}

{% docs bingeflix_name %}
The user's full name.
{% enddocs %}

{% docs bingeflix_phone_number %}
The user's phone number.
{% enddocs %}

{% docs bingeflix_region %}
The user's region of residence (state, province, etc.).
{% enddocs %}

{% docs bingeflix_sex %}
The user's sex at birth.
{% enddocs %}

{% docs bingeflix_user_id %}
The unique identifier of the Bingeflix user.
{% enddocs %}

{% docs bingeflix_username %}
The username for logging in to Bingeflix.
{% enddocs %}
