// @generated automatically by Diesel CLI.

diesel::table! {
    course (id) {
        id -> Int8,
        name -> Text,
    }
}

diesel::table! {
    course_partiton_22_ss (id) {
        id -> Int8,
        name -> Text,
    }
}

diesel::table! {
    course_user (course_id, member_user_id) {
        course_id -> Int8,
        member_user_id -> Int8,
        role -> Text,
    }
}

diesel::table! {
    user (id) {
        id -> Int8,
        last_name -> Text,
        common_name -> Text,
        last_activity_year -> Int2,
    }
}

diesel::joinable!(course_user -> course (course_id));
diesel::joinable!(course_user -> course_partiton_22_ss (course_id));
diesel::joinable!(course_user -> user (member_user_id));

diesel::allow_tables_to_appear_in_same_query!(
    course,
    course_partiton_22_ss,
    course_user,
    user,
);
