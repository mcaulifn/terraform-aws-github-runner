import { handle as githubWebhook } from './webhook/handler';
import { APIGatewayEvent, Context } from 'aws-lambda';

// eslint-disable-next-line @typescript-eslint/no-explicit-any
module.exports.githubWebhook = async (event: APIGatewayEvent, context: Context, callback: any) => {
  console.log(event);
  const statusCode = await githubWebhook(event.headers, event.body);
  return callback(null, {
    statusCode: statusCode,
  });
};
