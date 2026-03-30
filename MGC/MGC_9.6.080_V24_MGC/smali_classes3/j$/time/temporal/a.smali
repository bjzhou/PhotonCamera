.class public final enum Lj$/time/temporal/a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/n;


# static fields
.field public static final enum ALIGNED_DAY_OF_WEEK_IN_MONTH:Lj$/time/temporal/a;

.field public static final enum ALIGNED_DAY_OF_WEEK_IN_YEAR:Lj$/time/temporal/a;

.field public static final enum ALIGNED_WEEK_OF_MONTH:Lj$/time/temporal/a;

.field public static final enum ALIGNED_WEEK_OF_YEAR:Lj$/time/temporal/a;

.field public static final enum AMPM_OF_DAY:Lj$/time/temporal/a;

.field public static final enum CLOCK_HOUR_OF_AMPM:Lj$/time/temporal/a;

.field public static final enum CLOCK_HOUR_OF_DAY:Lj$/time/temporal/a;

.field public static final enum DAY_OF_MONTH:Lj$/time/temporal/a;

.field public static final enum DAY_OF_WEEK:Lj$/time/temporal/a;

.field public static final enum DAY_OF_YEAR:Lj$/time/temporal/a;

.field public static final enum EPOCH_DAY:Lj$/time/temporal/a;

.field public static final enum ERA:Lj$/time/temporal/a;

.field public static final enum HOUR_OF_AMPM:Lj$/time/temporal/a;

.field public static final enum HOUR_OF_DAY:Lj$/time/temporal/a;

.field public static final enum INSTANT_SECONDS:Lj$/time/temporal/a;

.field public static final enum MICRO_OF_DAY:Lj$/time/temporal/a;

.field public static final enum MICRO_OF_SECOND:Lj$/time/temporal/a;

.field public static final enum MILLI_OF_DAY:Lj$/time/temporal/a;

.field public static final enum MILLI_OF_SECOND:Lj$/time/temporal/a;

.field public static final enum MINUTE_OF_DAY:Lj$/time/temporal/a;

.field public static final enum MINUTE_OF_HOUR:Lj$/time/temporal/a;

.field public static final enum MONTH_OF_YEAR:Lj$/time/temporal/a;

.field public static final enum NANO_OF_DAY:Lj$/time/temporal/a;

.field public static final enum NANO_OF_SECOND:Lj$/time/temporal/a;

.field public static final enum OFFSET_SECONDS:Lj$/time/temporal/a;

.field public static final enum PROLEPTIC_MONTH:Lj$/time/temporal/a;

.field public static final enum SECOND_OF_DAY:Lj$/time/temporal/a;

.field public static final enum SECOND_OF_MINUTE:Lj$/time/temporal/a;

.field public static final enum YEAR:Lj$/time/temporal/a;

.field public static final enum YEAR_OF_ERA:Lj$/time/temporal/a;

.field private static final synthetic c:[Lj$/time/temporal/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lj$/time/temporal/r;


# direct methods
.method static constructor <clinit>()V
    .locals 46

    new-instance v7, Lj$/time/temporal/a;

    sget-object v8, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    sget-object v17, Lj$/time/temporal/ChronoUnit;->SECONDS:Lj$/time/temporal/ChronoUnit;

    const-wide/16 v14, 0x0

    const-wide/32 v12, 0x3b9ac9ff

    invoke-static {v14, v15, v12, v13}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object v6

    const/4 v2, 0x0

    const-string v3, "NanoOfSecond"

    const-string v1, "NANO_OF_SECOND"

    move-object v0, v7

    move-object v4, v8

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v6}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    sput-object v7, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    new-instance v18, Lj$/time/temporal/a;

    sget-object v27, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    const-wide v0, 0x4e94914effffL

    invoke-static {v14, v15, v0, v1}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object v6

    const/4 v2, 0x1

    const-string v3, "NanoOfDay"

    const-string v1, "NANO_OF_DAY"

    move-object/from16 v0, v18

    move-object/from16 v5, v27

    invoke-direct/range {v0 .. v6}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    sput-object v18, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    new-instance v8, Lj$/time/temporal/a;

    sget-object v9, Lj$/time/temporal/ChronoUnit;->MICROS:Lj$/time/temporal/ChronoUnit;

    const-wide/32 v0, 0xf423f

    invoke-static {v14, v15, v0, v1}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object v6

    const/4 v2, 0x2

    const-string v3, "MicroOfSecond"

    const-string v1, "MICRO_OF_SECOND"

    move-object v0, v8

    move-object v4, v9

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v6}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    sput-object v8, Lj$/time/temporal/a;->MICRO_OF_SECOND:Lj$/time/temporal/a;

    new-instance v28, Lj$/time/temporal/a;

    const-wide v0, 0x141dd75fffL

    invoke-static {v14, v15, v0, v1}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object v6

    const/4 v2, 0x3

    const-string v3, "MicroOfDay"

    const-string v1, "MICRO_OF_DAY"

    move-object/from16 v0, v28

    move-object/from16 v5, v27

    invoke-direct/range {v0 .. v6}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    sput-object v28, Lj$/time/temporal/a;->MICRO_OF_DAY:Lj$/time/temporal/a;

    new-instance v29, Lj$/time/temporal/a;

    sget-object v9, Lj$/time/temporal/ChronoUnit;->MILLIS:Lj$/time/temporal/ChronoUnit;

    const-wide/16 v0, 0x3e7

    invoke-static {v14, v15, v0, v1}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object v6

    const/4 v2, 0x4

    const-string v3, "MilliOfSecond"

    const-string v1, "MILLI_OF_SECOND"

    move-object/from16 v0, v29

    move-object v4, v9

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v6}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    sput-object v29, Lj$/time/temporal/a;->MILLI_OF_SECOND:Lj$/time/temporal/a;

    new-instance v30, Lj$/time/temporal/a;

    const-wide/32 v0, 0x5265bff

    invoke-static {v14, v15, v0, v1}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object v6

    const/4 v2, 0x5

    const-string v3, "MilliOfDay"

    const-string v1, "MILLI_OF_DAY"

    move-object/from16 v0, v30

    move-object/from16 v5, v27

    invoke-direct/range {v0 .. v6}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    sput-object v30, Lj$/time/temporal/a;->MILLI_OF_DAY:Lj$/time/temporal/a;

    new-instance v31, Lj$/time/temporal/a;

    sget-object v32, Lj$/time/temporal/ChronoUnit;->MINUTES:Lj$/time/temporal/ChronoUnit;

    const-wide/16 v5, 0x3b

    invoke-static {v14, v15, v5, v6}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object v0

    const-string v1, "SecondOfMinute"

    const/16 v16, 0x0

    const-string v10, "SECOND_OF_MINUTE"

    const/4 v11, 0x6

    move-object/from16 v9, v31

    move-wide v3, v12

    move-object v12, v1

    move-object/from16 v13, v17

    move-wide v1, v14

    move-object/from16 v14, v32

    move-object v15, v0

    invoke-direct/range {v9 .. v16}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;I)V

    sput-object v31, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    new-instance v9, Lj$/time/temporal/a;

    const-wide/32 v10, 0x1517f

    invoke-static {v1, v2, v10, v11}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object v10

    const/4 v11, 0x7

    const-string v12, "SecondOfDay"

    const-string v13, "SECOND_OF_DAY"

    move-object v0, v9

    move-wide v14, v1

    move-object v1, v13

    move v2, v11

    move-object v3, v12

    move-object/from16 v4, v17

    move-wide v11, v5

    move-object/from16 v5, v27

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    sput-object v9, Lj$/time/temporal/a;->SECOND_OF_DAY:Lj$/time/temporal/a;

    new-instance v10, Lj$/time/temporal/a;

    sget-object v13, Lj$/time/temporal/ChronoUnit;->HOURS:Lj$/time/temporal/ChronoUnit;

    invoke-static {v14, v15, v11, v12}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object v25

    const-string v22, "MinuteOfHour"

    const/16 v26, 0x0

    const-string v20, "MINUTE_OF_HOUR"

    const/16 v21, 0x8

    move-object/from16 v19, v10

    move-object/from16 v23, v32

    move-object/from16 v24, v13

    invoke-direct/range {v19 .. v26}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;I)V

    sput-object v10, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    new-instance v11, Lj$/time/temporal/a;

    const-wide/16 v0, 0x59f

    invoke-static {v14, v15, v0, v1}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object v6

    const/16 v2, 0x9

    const-string v3, "MinuteOfDay"

    const-string v1, "MINUTE_OF_DAY"

    move-object v0, v11

    move-object/from16 v4, v32

    invoke-direct/range {v0 .. v6}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    sput-object v11, Lj$/time/temporal/a;->MINUTE_OF_DAY:Lj$/time/temporal/a;

    new-instance v12, Lj$/time/temporal/a;

    sget-object v16, Lj$/time/temporal/ChronoUnit;->HALF_DAYS:Lj$/time/temporal/ChronoUnit;

    const-wide/16 v0, 0xb

    invoke-static {v14, v15, v0, v1}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object v6

    const/16 v2, 0xa

    const-string v3, "HourOfAmPm"

    const-string v1, "HOUR_OF_AMPM"

    move-object v0, v12

    move-object v4, v13

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v6}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    sput-object v12, Lj$/time/temporal/a;->HOUR_OF_AMPM:Lj$/time/temporal/a;

    new-instance v32, Lj$/time/temporal/a;

    const-wide/16 v5, 0x1

    const-wide/16 v3, 0xc

    invoke-static {v5, v6, v3, v4}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object v19

    const/16 v2, 0xb

    const-string v20, "ClockHourOfAmPm"

    const-string v1, "CLOCK_HOUR_OF_AMPM"

    move-object/from16 v0, v32

    move-object/from16 v3, v20

    move-object v4, v13

    move-object/from16 v5, v16

    move-object/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    sput-object v32, Lj$/time/temporal/a;->CLOCK_HOUR_OF_AMPM:Lj$/time/temporal/a;

    new-instance v38, Lj$/time/temporal/a;

    const-wide/16 v0, 0x17

    invoke-static {v14, v15, v0, v1}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object v25

    const-string v22, "HourOfDay"

    const-string v20, "HOUR_OF_DAY"

    const/16 v21, 0xc

    move-object/from16 v19, v38

    move-object/from16 v23, v13

    move-object/from16 v24, v27

    invoke-direct/range {v19 .. v26}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;I)V

    sput-object v38, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    new-instance v39, Lj$/time/temporal/a;

    const-wide/16 v0, 0x18

    const-wide/16 v5, 0x1

    invoke-static {v5, v6, v0, v1}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object v19

    const/16 v2, 0xd

    const-string v3, "ClockHourOfDay"

    const-string v1, "CLOCK_HOUR_OF_DAY"

    move-object/from16 v0, v39

    move-object/from16 v5, v27

    move-object/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    sput-object v39, Lj$/time/temporal/a;->CLOCK_HOUR_OF_DAY:Lj$/time/temporal/a;

    new-instance v13, Lj$/time/temporal/a;

    const-wide/16 v5, 0x1

    invoke-static {v14, v15, v5, v6}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object v25

    const-string v22, "AmPmOfDay"

    const-string v20, "AMPM_OF_DAY"

    const/16 v21, 0xe

    move-object/from16 v19, v13

    move-object/from16 v23, v16

    invoke-direct/range {v19 .. v26}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;I)V

    sput-object v13, Lj$/time/temporal/a;->AMPM_OF_DAY:Lj$/time/temporal/a;

    new-instance v16, Lj$/time/temporal/a;

    sget-object v36, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    const-wide/16 v3, 0x7

    invoke-static {v5, v6, v3, v4}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object v25

    const-string v22, "DayOfWeek"

    const-string v20, "DAY_OF_WEEK"

    const/16 v21, 0xf

    move-object/from16 v19, v16

    move-object/from16 v23, v27

    move-object/from16 v24, v36

    invoke-direct/range {v19 .. v26}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;I)V

    sput-object v16, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    new-instance v37, Lj$/time/temporal/a;

    invoke-static {v5, v6, v3, v4}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object v19

    const/16 v2, 0x10

    const-string v20, "AlignedDayOfWeekInMonth"

    const-string v1, "ALIGNED_DAY_OF_WEEK_IN_MONTH"

    move-object/from16 v0, v37

    move-wide v14, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v27

    move-object/from16 v5, v36

    move-object/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    sput-object v37, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lj$/time/temporal/a;

    new-instance v42, Lj$/time/temporal/a;

    const-wide/16 v5, 0x1

    invoke-static {v5, v6, v14, v15}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object v14

    const/16 v2, 0x11

    const-string v3, "AlignedDayOfWeekInYear"

    const-string v1, "ALIGNED_DAY_OF_WEEK_IN_YEAR"

    move-object/from16 v0, v42

    move-object/from16 v5, v36

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    sput-object v42, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lj$/time/temporal/a;

    new-instance v14, Lj$/time/temporal/a;

    sget-object v15, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    const-wide/16 v2, 0x1c

    const-wide/16 v4, 0x1f

    const-wide/16 v0, 0x1

    invoke-static/range {v0 .. v5}, Lj$/time/temporal/r;->k(JJJ)Lj$/time/temporal/r;

    move-result-object v25

    const-string v22, "DayOfMonth"

    const/16 v26, 0x0

    const-string v20, "DAY_OF_MONTH"

    const/16 v21, 0x12

    move-object/from16 v19, v14

    move-object/from16 v23, v27

    move-object/from16 v24, v15

    invoke-direct/range {v19 .. v26}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;I)V

    sput-object v14, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    new-instance v40, Lj$/time/temporal/a;

    sget-object v41, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    const-wide/16 v2, 0x16d

    const-wide/16 v4, 0x16e

    const-wide/16 v0, 0x1

    invoke-static/range {v0 .. v5}, Lj$/time/temporal/r;->k(JJJ)Lj$/time/temporal/r;

    move-result-object v6

    const/16 v2, 0x13

    const-string v3, "DayOfYear"

    const-string v1, "DAY_OF_YEAR"

    move-object/from16 v0, v40

    move-object/from16 v4, v27

    move-object/from16 v5, v41

    invoke-direct/range {v0 .. v6}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    sput-object v40, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    new-instance v43, Lj$/time/temporal/a;

    sget-object v44, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    const-wide v0, -0x550a313cdaL

    const-wide v2, 0x550a1b48f7L

    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object v6

    const/16 v2, 0x14

    const-string v3, "EpochDay"

    const-string v1, "EPOCH_DAY"

    move-object/from16 v0, v43

    move-object/from16 v5, v44

    invoke-direct/range {v0 .. v6}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    sput-object v43, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    new-instance v27, Lj$/time/temporal/a;

    const-wide/16 v2, 0x4

    const-wide/16 v4, 0x5

    const-wide/16 v0, 0x1

    invoke-static/range {v0 .. v5}, Lj$/time/temporal/r;->k(JJJ)Lj$/time/temporal/r;

    move-result-object v25

    const/16 v21, 0x15

    const-string v22, "AlignedWeekOfMonth"

    const-string v20, "ALIGNED_WEEK_OF_MONTH"

    move-object/from16 v19, v27

    move-object/from16 v23, v36

    move-object/from16 v24, v15

    invoke-direct/range {v19 .. v25}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    sput-object v27, Lj$/time/temporal/a;->ALIGNED_WEEK_OF_MONTH:Lj$/time/temporal/a;

    new-instance v45, Lj$/time/temporal/a;

    const-wide/16 v0, 0x35

    const-wide/16 v5, 0x1

    invoke-static {v5, v6, v0, v1}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object v25

    const/16 v21, 0x16

    const-string v22, "AlignedWeekOfYear"

    const-string v20, "ALIGNED_WEEK_OF_YEAR"

    move-object/from16 v19, v45

    move-object/from16 v24, v41

    invoke-direct/range {v19 .. v25}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    sput-object v45, Lj$/time/temporal/a;->ALIGNED_WEEK_OF_YEAR:Lj$/time/temporal/a;

    new-instance v36, Lj$/time/temporal/a;

    const-wide/16 v0, 0xc

    invoke-static {v5, v6, v0, v1}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object v25

    const-string v22, "MonthOfYear"

    const/16 v26, 0x0

    const-string v20, "MONTH_OF_YEAR"

    const/16 v21, 0x17

    move-object/from16 v19, v36

    move-object/from16 v23, v15

    invoke-direct/range {v19 .. v26}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;I)V

    sput-object v36, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    new-instance v34, Lj$/time/temporal/a;

    const-wide v0, -0x2cb4177f4L

    const-wide v2, 0x2cb4177ffL

    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object v19

    const/16 v2, 0x18

    const-string v3, "ProlepticMonth"

    const-string v1, "PROLEPTIC_MONTH"

    move-object/from16 v0, v34

    move-object v4, v15

    move-object/from16 v5, v44

    move-object/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    sput-object v34, Lj$/time/temporal/a;->PROLEPTIC_MONTH:Lj$/time/temporal/a;

    new-instance v15, Lj$/time/temporal/a;

    const-wide/32 v2, 0x3b9ac9ff

    const-wide/32 v4, 0x3b9aca00

    const-wide/16 v0, 0x1

    invoke-static/range {v0 .. v5}, Lj$/time/temporal/r;->k(JJJ)Lj$/time/temporal/r;

    move-result-object v6

    const/16 v2, 0x19

    const-string v3, "YearOfEra"

    const-string v1, "YEAR_OF_ERA"

    move-object v0, v15

    move-object/from16 v4, v41

    move-object/from16 v5, v44

    invoke-direct/range {v0 .. v6}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    sput-object v15, Lj$/time/temporal/a;->YEAR_OF_ERA:Lj$/time/temporal/a;

    new-instance v35, Lj$/time/temporal/a;

    const-wide/32 v0, -0x3b9ac9ff

    const-wide/32 v2, 0x3b9ac9ff

    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object v25

    const-string v22, "Year"

    const/16 v26, 0x0

    const-string v20, "YEAR"

    const/16 v21, 0x1a

    move-object/from16 v19, v35

    move-object/from16 v23, v41

    move-object/from16 v24, v44

    invoke-direct/range {v19 .. v26}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;I)V

    sput-object v35, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    new-instance v33, Lj$/time/temporal/a;

    sget-object v23, Lj$/time/temporal/ChronoUnit;->ERAS:Lj$/time/temporal/ChronoUnit;

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object v25

    const-string v22, "Era"

    const-string v20, "ERA"

    const/16 v21, 0x1b

    move-object/from16 v19, v33

    invoke-direct/range {v19 .. v26}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;I)V

    sput-object v33, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    new-instance v19, Lj$/time/temporal/a;

    const-wide/high16 v0, -0x8000000000000000L

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object v6

    const/16 v2, 0x1c

    const-string v3, "InstantSeconds"

    const-string v1, "INSTANT_SECONDS"

    move-object/from16 v0, v19

    move-object/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    sput-object v19, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    new-instance v20, Lj$/time/temporal/a;

    const-wide/32 v0, -0xfd20

    const-wide/32 v2, 0xfd20

    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object v6

    const/16 v2, 0x1d

    const-string v3, "OffsetSeconds"

    const-string v1, "OFFSET_SECONDS"

    move-object/from16 v0, v20

    invoke-direct/range {v0 .. v6}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V

    sput-object v20, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    const/16 v0, 0x1e

    new-array v0, v0, [Lj$/time/temporal/a;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    const/4 v1, 0x1

    aput-object v18, v0, v1

    const/4 v1, 0x2

    aput-object v8, v0, v1

    const/4 v1, 0x3

    aput-object v28, v0, v1

    const/4 v1, 0x4

    aput-object v29, v0, v1

    const/4 v1, 0x5

    aput-object v30, v0, v1

    const/4 v1, 0x6

    aput-object v31, v0, v1

    const/4 v1, 0x7

    aput-object v9, v0, v1

    const/16 v1, 0x8

    aput-object v10, v0, v1

    const/16 v1, 0x9

    aput-object v11, v0, v1

    const/16 v1, 0xa

    aput-object v12, v0, v1

    const/16 v1, 0xb

    aput-object v32, v0, v1

    const/16 v1, 0xc

    aput-object v38, v0, v1

    const/16 v1, 0xd

    aput-object v39, v0, v1

    const/16 v1, 0xe

    aput-object v13, v0, v1

    const/16 v1, 0xf

    aput-object v16, v0, v1

    const/16 v1, 0x10

    aput-object v37, v0, v1

    const/16 v1, 0x11

    aput-object v42, v0, v1

    const/16 v1, 0x12

    aput-object v14, v0, v1

    const/16 v1, 0x13

    aput-object v40, v0, v1

    const/16 v1, 0x14

    aput-object v43, v0, v1

    const/16 v1, 0x15

    aput-object v27, v0, v1

    const/16 v1, 0x16

    aput-object v45, v0, v1

    const/16 v1, 0x17

    aput-object v36, v0, v1

    const/16 v1, 0x18

    aput-object v34, v0, v1

    const/16 v1, 0x19

    aput-object v15, v0, v1

    const/16 v1, 0x1a

    aput-object v35, v0, v1

    const/16 v1, 0x1b

    aput-object v33, v0, v1

    const/16 v1, 0x1c

    aput-object v19, v0, v1

    const/16 v1, 0x1d

    aput-object v20, v0, v1

    sput-object v0, Lj$/time/temporal/a;->c:[Lj$/time/temporal/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lj$/time/temporal/a;->a:Ljava/lang/String;

    iput-object p6, p0, Lj$/time/temporal/a;->b:Lj$/time/temporal/r;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/r;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lj$/time/temporal/a;->a:Ljava/lang/String;

    iput-object p6, p0, Lj$/time/temporal/a;->b:Lj$/time/temporal/r;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/temporal/a;
    .locals 1

    const-class v0, Lj$/time/temporal/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/time/temporal/a;

    return-object p0
.end method

.method public static values()[Lj$/time/temporal/a;
    .locals 1

    sget-object v0, Lj$/time/temporal/a;->c:[Lj$/time/temporal/a;

    invoke-virtual {v0}, [Lj$/time/temporal/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/temporal/a;

    return-object v0
.end method


# virtual methods
.method public final C()Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final F(J)I
    .locals 1

    iget-object v0, p0, Lj$/time/temporal/a;->b:Lj$/time/temporal/r;

    invoke-virtual {v0, p1, p2, p0}, Lj$/time/temporal/r;->a(JLj$/time/temporal/n;)I

    move-result p1

    return p1
.end method

.method public final V(J)V
    .locals 1

    iget-object v0, p0, Lj$/time/temporal/a;->b:Lj$/time/temporal/r;

    invoke-virtual {v0, p1, p2, p0}, Lj$/time/temporal/r;->b(JLj$/time/temporal/n;)V

    return-void
.end method

.method public final W()Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final k()Lj$/time/temporal/r;
    .locals 1

    iget-object v0, p0, Lj$/time/temporal/a;->b:Lj$/time/temporal/r;

    return-object v0
.end method

.method public final n(Lj$/time/temporal/TemporalAccessor;)J
    .locals 2

    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAccessor;->x(Lj$/time/temporal/n;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final r(Lj$/time/temporal/TemporalAccessor;)Z
    .locals 0

    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAccessor;->g(Lj$/time/temporal/n;)Z

    move-result p1

    return p1
.end method

.method public final s(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-interface {p1, p2, p3, p0}, Lj$/time/temporal/Temporal;->d(JLj$/time/temporal/n;)Lj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/time/temporal/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final x(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/r;
    .locals 0

    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAccessor;->s(Lj$/time/temporal/n;)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1
.end method
