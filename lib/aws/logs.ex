# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.Logs do
  @moduledoc """
  This is the *Amazon CloudWatch Logs API Reference*. Amazon CloudWatch Logs
  enables you to monitor, store, and access your system, application, and
  custom log files. This guide provides detailed information about Amazon
  CloudWatch Logs actions, data types, parameters, and errors. For detailed
  information about Amazon CloudWatch Logs features and their associated API
  calls, go to the [Amazon CloudWatch Developer
  Guide](http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide).

  Use the following links to get started using the *Amazon CloudWatch Logs
  API Reference*:

  *
  [Actions](http://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_Operations.html):
  An alphabetical list of all Amazon CloudWatch Logs actions. * [Data
  Types](http://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_Types.html):
  An alphabetical list of all Amazon CloudWatch Logs data types. * [Common
  Parameters](http://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/CommonParameters.html):
  Parameters that all Query actions can use. * [Common
  Errors](http://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/CommonErrors.html):
  Client and server errors that all actions can return. * [Regions and
  Endpoints](http://docs.aws.amazon.com/general/latest/gr/index.html?rande.html):
  Itemized regions and endpoints for all AWS products.

  In addition to using the Amazon CloudWatch Logs API, you can also use the
  following SDKs and third-party libraries to access Amazon CloudWatch Logs
  programmatically.

  * [AWS SDK for Java
  Documentation](http://aws.amazon.com/documentation/sdkforjava/) * [AWS SDK
  for .NET Documentation](http://aws.amazon.com/documentation/sdkfornet/) *
  [AWS SDK for PHP
  Documentation](http://aws.amazon.com/documentation/sdkforphp/) * [AWS SDK
  for Ruby Documentation](http://aws.amazon.com/documentation/sdkforruby/)

  Developers in the AWS developer community also provide their own libraries,
  which you can find at the following AWS developer centers:

  * [AWS Java Developer Center](http://aws.amazon.com/java/) * [AWS PHP
  Developer Center](http://aws.amazon.com/php/) * [AWS Python Developer
  Center](http://aws.amazon.com/python/) * [AWS Ruby Developer
  Center](http://aws.amazon.com/ruby/) * [AWS Windows and .NET Developer
  Center](http://aws.amazon.com/net/)
  """

  @doc """
  Creates a new log group with the specified name. The name of the log group
  must be unique within a region for an AWS account. You can create up to 500
  log groups per account.

  You must use the following guidelines when naming a log group: * Log group
  names can be between 1 and 512 characters long. * Allowed characters are
  a-z, A-Z, 0-9, '_' (underscore), '-' (hyphen), '/' (forward slash), and '.'
  (period).
  """
  def create_log_group(client, input, options \\ []) do
    request(client, "CreateLogGroup", input, options)
  end

  @doc """
  Creates a new log stream in the specified log group. The name of the log
  stream must be unique within the log group. There is no limit on the number
  of log streams that can exist in a log group.

  You must use the following guidelines when naming a log stream: * Log
  stream names can be between 1 and 512 characters long. * The ':' colon
  character is not allowed.
  """
  def create_log_stream(client, input, options \\ []) do
    request(client, "CreateLogStream", input, options)
  end

  @doc """
  Deletes the log group with the specified name and permanently deletes all
  the archived log events associated with it.
  """
  def delete_log_group(client, input, options \\ []) do
    request(client, "DeleteLogGroup", input, options)
  end

  @doc """
  Deletes a log stream and permanently deletes all the archived log events
  associated with it.
  """
  def delete_log_stream(client, input, options \\ []) do
    request(client, "DeleteLogStream", input, options)
  end

  @doc """
  Deletes a metric filter associated with the specified log group.
  """
  def delete_metric_filter(client, input, options \\ []) do
    request(client, "DeleteMetricFilter", input, options)
  end

  @doc """
  Deletes the retention policy of the specified log group. Log events would
  not expire if they belong to log groups without a retention policy.
  """
  def delete_retention_policy(client, input, options \\ []) do
    request(client, "DeleteRetentionPolicy", input, options)
  end

  @doc """
  Returns all the log groups that are associated with the AWS account making
  the request. The list returned in the response is ASCII-sorted by log group
  name.

  By default, this operation returns up to 50 log groups. If there are more
  log groups to list, the response would contain a <code
  class="code">nextToken` value in the response body. You can also limit the
  number of log groups returned in the response by specifying the <code
  class="code">limit` parameter in the request.
  """
  def describe_log_groups(client, input, options \\ []) do
    request(client, "DescribeLogGroups", input, options)
  end

  @doc """
  Returns all the log streams that are associated with the specified log
  group. The list returned in the response is ASCII-sorted by log stream
  name.

  By default, this operation returns up to 50 log streams. If there are more
  log streams to list, the response would contain a <code
  class="code">nextToken` value in the response body. You can also limit the
  number of log streams returned in the response by specifying the <code
  class="code">limit` parameter in the request. This operation has a limit of
  five transactions per second, after which transactions are throttled.
  """
  def describe_log_streams(client, input, options \\ []) do
    request(client, "DescribeLogStreams", input, options)
  end

  @doc """
  Returns all the metrics filters associated with the specified log group.
  The list returned in the response is ASCII-sorted by filter name.

  By default, this operation returns up to 50 metric filters. If there are
  more metric filters to list, the response would contain a <code
  class="code">nextToken` value in the response body. You can also limit the
  number of metric filters returned in the response by specifying the <code
  class="code">limit` parameter in the request.
  """
  def describe_metric_filters(client, input, options \\ []) do
    request(client, "DescribeMetricFilters", input, options)
  end

  @doc """
  Retrieves log events from the specified log stream. You can provide an
  optional time range to filter the results on the event <code
  class="code">timestamp`.

  By default, this operation returns as much log events as can fit in a
  response size of 1MB, up to 10,000 log events. The response will always
  include a <code class="code">nextForwardToken` and a <code
  class="code">nextBackwardToken` in the response body. You can use any of
  these tokens in subsequent <code class="code">GetLogEvents` requests to
  paginate through events in either forward or backward direction. You can
  also limit the number of log events returned in the response by specifying
  the <code class="code">limit` parameter in the request.
  """
  def get_log_events(client, input, options \\ []) do
    request(client, "GetLogEvents", input, options)
  end

  @doc """
  Uploads a batch of log events to the specified log stream.

  Every PutLogEvents request must include the <code
  class="code">sequenceToken` obtained from the response of the previous
  request. An upload in a newly created log stream does not require a <code
  class="code">sequenceToken`.

  The batch of events must satisfy the following constraints: * The maximum
  batch size is 1,048,576 bytes, and this size is calculated as the sum of
  all event messages in UTF-8, plus 26 bytes for each log event. * None of
  the log events in the batch can be more than 2 hours in the future. * None
  of the log events in the batch can be older than 14 days or the retention
  period of the log group. * The log events in the batch must be in
  chronological ordered by their <code class="code">timestamp`. * The maximum
  number of log events in a batch is 10,000.
  """
  def put_log_events(client, input, options \\ []) do
    request(client, "PutLogEvents", input, options)
  end

  @doc """
  Creates or updates a metric filter and associates it with the specified log
  group. Metric filters allow you to configure rules to extract metric data
  from log events ingested through <code class="code">PutLogEvents` requests.
  """
  def put_metric_filter(client, input, options \\ []) do
    request(client, "PutMetricFilter", input, options)
  end

  @doc """
  Sets the retention of the specified log group. A retention policy allows
  you to configure the number of days you want to retain log events in the
  specified log group.
  """
  def put_retention_policy(client, input, options \\ []) do
    request(client, "PutRetentionPolicy", input, options)
  end

  @doc """
  Tests the filter pattern of a metric filter against a sample of log event
  messages. You can use this operation to validate the correctness of a
  metric filter pattern.
  """
  def test_metric_filter(client, input, options \\ []) do
    request(client, "TestMetricFilter", input, options)
  end

  defp request(client, action, input, options) do
    client = %{client | service: "logs"}
    host = "logs.#{client.region}.#{client.endpoint}"
    url = "https://#{host}/"
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "Logs_20140328.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body)["__type"]
        {:error, reason}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end
end

