SERVER = ''
USERNAME = ''
PASSWORD = ''

DATA_COLLECTOR = {}

def args
  []
end

def random_word(length = 8)
  (0...length).map { ('a'..'z').to_a[rand(26)] }.join
end

def random_bool
  [true, false].sample
end

def random_email
  random_word + '@sharklasers.com'
end

def add_data_to_collector
  false
end

def random_id(param)
  DATA_COLLECTOR["#{param}_ids".to_sym].sample
end

def random_settings_entity_id
  SETTINGS_ENTITY_IDS.sample
end

#region OPTIONS
#region People
USER_STATUSES = %w(Active Terminated LeaveOfAbsence Default All)
USER_CONTACTS = [
                { type: 'skype', value: random_word },
                { type: 'email', value: random_email }
                ]
USER_TYPES = %w(All User Visitor)
PATH_TO_IMAGE = 'http://ic.pics.livejournal.com/scryp/14761862/5478/5478_original.jpg'
#endregion

#regions Settings
SETTINGS_ENTITY_IDS = %w(1e044602-43b5-4d79-82f3-fd6208a11960 6743007c-6f95-4d20-8c88-a8601ce5e76d ea942538-e68e-4907-9394-035336ee0ba8
                         f4d98afd-d336-4332-8778-3c6945c81ea0 2a923037-8b2d-487b-9a22-5ac0918acf3f   bf88953e-3c43-4850-a3fb-b1e43ad53a3e 32d24cb5-7ece-4606-9c94-19216ba42086)
SETTINGS_TEST_USER = '27cd9da5-4f97-4335-ac45-55dd05d96d89'
SETTINGS_TALK_MODULE_ID = 'bf88953e-3c43-4850-a3fb-b1e43ad53a3e'
SETTINGS_VERSION = 2
SETTINGS_FOR_TALK = { enabled: true }
#endregion

#region Files
FILE_FOR_OPERATIONS_VERSION = 1
FILES_SHARE_TYPES = %w(None ReadWrite Read Restrict)
#endregion

#region Projects
PROJECT_STATUSES = %w(open paused closed)
PROJECT_MILESTONE_STATUSES = %w(open closed)
PROJECT_TASK_LINK_TYPES = %w(Start End EndStart)
PROJECT_SECURITY_RIGHTS = %w(None Messages Tasks Files Milestone Contacts)
PROJECT_TASKS_STATUSES = %w(open closed)
PROJECT_TASK_TIME_STATUSES = %w(NotChargeable NotBilled Billed )

BASECAMP_URL = "https://basecamp.com/2452154"
BASECAMP_LOGIN = ""
BASECAMP_PSW = ""
IMPORT_CLOSED_PROJECTS = true
DISABLE_NOTIFICATONS = false
IMPORT_USERS_AS_COLLABORATORS = true
PROJECT_ID_FOR_OPERATIONS = '4322'
MESSAGE_ID = '3878'

TASK_ID = '12406'
RESPONSIBLE_ID = '187ecad1-eeb4-4173-a6c0-1c225ad72fb2'
RANDOM_TITLE = random_word(10).capitalize
PROJECT_DESCRIPTION = random_word(10,).capitalize
ANOTHER_PROJECT_ID = 9735
MILESTONE_ID = 422849
SOME_DATE = '2015-03-23T14:27:14'
ANOTHER_DATE = '2015-06-10T06:30:00.0000000-07:00'
SIMPLE_DATE = '2011-10-1'
RANDOM_NOTE = random_word(12)
TIME_ID = 528238
#endregion

#region CRM
BID_TYPES = %w(FixedBid PerHour PerDay PerWeek PerMonth PerYear)
COLORS_NAMES = %w(red yellow black white green purple brown grey blue)
INVOICE_STATUSES = %w(Draft Sent Rejected Paid Overdue Archived)

OPPORTUNITY_COLOR_NAME = 'red'
OPPORTUNITY_ID = '74156'
SUCCESS_PROBABILITY = 18
BID_TYPE = 'PerMonth'
PER_PERIOD_VALUE = 345
STAGE_ID = 110331
CONTACTS_IDS = [2971532, 2971531, 75613, 3065356, 3065355, 3065354, 3065353]
CONTACT_ID = 3065356
CONTACT_TYPE_ID = 235222
IS_PRIVATE = true
INVOICE_ID = 74
CATEGORY_ID = 1979
RANDOM_TAGS = [random_word(3), random_word(5)]
AUTOGENERATED = true
INVOICE_STATUS = 'Paid'
CONTACT_STATUS_ID = 1990
HISTORY_CATEGORY_ID = 241050
COMPANY_ID = 2971531
CONTACT_INFORMATION_ID = 452955
NEW_RANDOM_USERS_ARRAY = (1..rand(5)).collect { {firstName: random_word(rand(3..12)).capitalize, lastName: random_word(rand(3..12)).capitalize} }
INFO_TYPE = 1#'Phone'
INFO_DATA = 54273553
INFO_CATEGORY = 'Work'
IMAGE_URL = 'http://thebooksmugglers.com/wp-content/uploads/2009/02/image002-200x300.jpg'#'http://www.soulscode.com/wp-content/uploads/2011/02/doll-200x300.jpg'
#endregion

#region Community
POST_ID = '797eb01e-b13f-49a4-9b4c-b74b40bad876'
BOOKMARK_ID = 288498
EVENT_ID = 63569
THREAD_ID = 4988
TOPIC_ID = 26560
COMMUNITY_CATEGORY_ID = 3779
THREAD_NAME = '1'
WIKI_PAGE_NAME = 'fsdf'
WIKI_FILE_NAME = 'rapuncel.jpg'
WIKI_PAGE_COMMENT_ID = '8a72589a-f9f0-44b7-aed4-1608335f1855'
#endregion

#region Calendar
CALENDAR_ID = 1395822265100
#endregion
#endregion