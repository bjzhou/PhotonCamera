.class public Lcom/google/android/apps/camera/debug/shottracker/db/DbDebugDumper;
.super Lpcz;
.source "PG"


# static fields
.field private static final a:Lj$/time/format/DateTimeFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_1
    invoke-virtual {v0, v1}, Lj$/time/format/DateTimeFormatter;->withZone(Lj$/time/ZoneId;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    const v0, 0x7

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0}, Lj$/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    :goto_9
    const-string v0, "MM-dd HH:mm:ss.SSS"

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sput-object v0, Lcom/google/android/apps/camera/debug/shottracker/db/DbDebugDumper;->a:Lj$/time/format/DateTimeFormatter;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lpcz;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method private static b(Ljava/util/Map;Ljava/util/List;Ljava/io/PrintWriter;)V
    .locals 22

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3
    if-ltz v5, :cond_0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_65

    nop

    nop

    :goto_4
    move-object/from16 v10, p0

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move-object v1, v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-wide v2, v9, Lhrn;->c:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v7, "      .%03ds"

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_a
    const-string v5, " start="

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v7, "%10.3fs"

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object v4, v1

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_e
    if-nez v11, :cond_1

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    div-double/2addr v11, v13

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    goto/32 :goto_81

    nop

    nop

    :goto_12
    iget-wide v0, v9, Lhrn;->f:J

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_15
    if-eqz v7, :cond_2

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_2
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-wide v5, v8, Lhrr;->c:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_18
    iget-wide v0, v9, Lhrn;->e:J

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_19
    const-string v0, " failed="

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_1a
    check-cast v9, Lhrn;

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_1b
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v14, v9, Lhrn;->h:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_47

    nop

    nop

    :goto_1e
    sget-object v2, Lcom/google/android/apps/camera/whitebalance/YD/hwKuVzZ;->zQftR:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sget-object v2, Lj$/time/Duration;->ZERO:Lj$/time/Duration;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_23
    long-to-double v11, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    :cond_3
    goto/32 :goto_72

    nop

    :goto_25
    const-wide v13, 0x408f400000000000L    # 1000.0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v3, v0}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v13, v9, Lhrn;->b:Ljava/lang/String;

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_28
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_29
    iget-wide v5, v9, Lhrn;->a:J

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const-string v5, "[pid="

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-gez v2, :cond_4

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_2f
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    :goto_30
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_31
    if-nez v9, :cond_5

    nop

    nop

    goto/32 :goto_7c

    nop

    :cond_5
    goto/32 :goto_5e

    nop

    nop

    :goto_32
    move-wide/from16 v18, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_33
    goto/16 :goto_6a

    nop

    nop

    :goto_34
    goto/32 :goto_69

    nop

    nop

    nop

    :goto_35
    move-wide/from16 v2, v20

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_36
    if-nez v8, :cond_6

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :cond_6
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_3a
    const-string v2, ": "

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_3b
    cmp-long v11, v11, v5

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3c
    add-int v0, v0, v1

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_3d
    move-wide v5, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_3e
    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    :goto_3f
    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_40
    const v0, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const-string v5, " "

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    move-object/from16 v1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_43
    const-string v2, " mostRecentEvent="

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_44
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_45
    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_46
    move-wide/from16 v20, v0

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_48
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_49
    move-object v1, v0

    nop

    :goto_4a
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_4b
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_4c
    const-string v11, "  "

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    move-wide/from16 v16, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_50
    const-wide v3, 0x7fffffffffffffffL

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_53
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget-wide v0, v9, Lhrn;->d:J

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_58
    move-object v0, v1

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-static {v2, v3}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    move-result-object v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_5a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_5b
    iget-wide v9, v8, Lhrr;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_5c
    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_5d
    check-cast v8, Lhrr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_5e
    iget-wide v11, v8, Lhrr;->b:J

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-boolean v9, v9, Lhrn;->l:Z

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_61
    const-wide/16 v13, 0x3e8

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_62
    move-object v4, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_63
    iget-wide v5, v8, Lhrr;->b:J

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v2}, Lj$/time/Duration;->toMillis()J

    move-result-wide v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_65
    const-string v5, ""

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_66
    goto/16 :goto_4a

    nop

    :goto_67
    goto/32 :goto_d

    nop

    nop

    :goto_68
    iget-wide v11, v9, Lhrn;->j:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-static {v7, v0}, Lj$/time/Duration;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)Lj$/time/Duration;

    move-result-object v2

    nop

    nop

    :goto_6a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_6b
    iget-wide v0, v9, Lhrn;->g:J

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_6c
    iget-object v7, v8, Lhrr;->d:Ljava/lang/String;

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_6d
    iget-wide v2, v8, Lhrr;->c:J

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_70
    goto/16 :goto_2e

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_72
    goto/32 :goto_82

    nop

    :goto_73
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_74
    const-string v2, " canceled="

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2b

    nop

    nop

    :goto_76
    move-wide/from16 v2, v16

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    const-string v2, " deleted="

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    const-wide v3, 0x7fffffffffffffffL

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    move-object v1, v4

    nop

    nop

    :goto_7c
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    new-instance v15, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    const-string v5, " captureSessionType="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_80
    goto/32 :goto_73

    nop

    nop

    nop

    :goto_81
    return-void

    nop

    nop

    nop

    nop

    :goto_82
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_83
    const-string v5, "] title="

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_84
    cmp-long v5, v5, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_85
    sget-object v3, Lcom/google/android/apps/camera/debug/shottracker/db/DbDebugDumper;->a:Lj$/time/format/DateTimeFormatter;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_86
    cmp-long v2, v11, v13

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_87
    move-object/from16 v0, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_89
    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    move-object v7, v0

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    move-wide/from16 v2, v18

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_8d
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    iget-object v7, v9, Lhrn;->i:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_8f
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_90
    new-instance v9, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_91
    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_92
    goto/16 :goto_3f

    nop

    :goto_93
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/io/PrintWriter;)V
    .locals 9

    goto/32 :goto_43

    nop

    nop

    :goto_0
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v1, Ljava/util/List;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v0, Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_5
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v4, Lhdp;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_5

    nop

    :goto_8
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v0, " SUSPECT, "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    goto/32 :goto_d

    nop

    nop

    :goto_b
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v1, Lhdp;

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Left;->m()V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_e
    const-wide/16 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-wide v5, v4, Lhrn;->f:J

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_10
    invoke-static {v0, v2, v3, v1}, Ldvw;->z(Left;ZZLubk;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    iget-wide v5, v4, Lhrn;->e:J

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_13
    if-eqz v5, :cond_0

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4b

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lefs;->a()Left;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_17
    invoke-static {v3, v1, p1}, Lcom/google/android/apps/camera/debug/shottracker/db/DbDebugDumper;->b(Ljava/util/Map;Ljava/util/List;Ljava/io/PrintWriter;)V

    :goto_18
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Lcom/google/android/apps/camera/debug/shottracker/db/ShotDatabase;->w()Lhrf;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-eqz v5, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    :goto_1f
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast v1, Lhrq;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_22
    const-string v6, "DUMPING: "

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2e

    nop

    nop

    :goto_25
    const-string v1, "shot_db"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_26
    new-instance v5, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_28
    check-cast v0, Lhrk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_29
    invoke-virtual {p0}, Lefs;->c()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_8

    nop

    nop

    :goto_2b
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2d
    check-cast p0, Lcom/google/android/apps/camera/debug/shottracker/db/ShotDatabase;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_2f
    iget-wide v5, v4, Lhrn;->a:J

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {v4, v5}, Lhdp;-><init>(I)V

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const-class v0, Lcom/google/android/apps/camera/debug/shottracker/db/ShotDatabase;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_32
    cmp-long v5, v5, v7

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_34
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-eqz v5, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_2
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_1f

    nop

    :goto_37
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_38
    new-instance v2, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_39
    cmp-long v5, v5, v7

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v1, v1, Lhrq;->a:Left;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3b
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3d
    iget-boolean v5, v4, Lhrn;->l:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3f
    check-cast v4, Lhrn;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p0}, Lcom/google/android/apps/camera/debug/shottracker/db/ShotDatabase;->x()Lhro;

    move-result-object v1

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_41
    const/4 v5, 0x5

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_42
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    :goto_47
    if-nez v4, :cond_3

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :cond_3
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_49
    iget-wide v5, v4, Lhrn;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_4a
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_4b
    const-string v5, "\nOK SHOTS"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_4c
    goto/16 :goto_5

    nop

    :goto_4d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    :goto_50
    if-eqz v5, :cond_4

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_51
    iget-wide v5, v4, Lhrn;->d:J

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_52
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v1

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_53
    const-string v4, " OK"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_55
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_56
    new-instance v3, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_57
    const-string v5, "\nDUMPED: "

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_59
    if-eqz v5, :cond_5

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_5
    goto/32 :goto_11

    nop

    nop

    :goto_5a
    goto/32 :goto_37

    nop

    nop

    :goto_5b
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_5c
    const/4 v2, 0x1

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_5d
    invoke-static {p0, v0, v1}, Ldxp;->g(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Lefs;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-static {v2, v1, p1}, Lcom/google/android/apps/camera/debug/shottracker/db/DbDebugDumper;->b(Ljava/util/Map;Ljava/util/List;Ljava/io/PrintWriter;)V

    :goto_5f
    goto/32 :goto_52

    nop

    nop

    :goto_60
    if-eqz v5, :cond_6

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_61
    iget-object v0, v0, Lhrk;->a:Left;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_62
    if-lez v0, :cond_7

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_7
    goto/32 :goto_36

    nop

    :goto_63
    invoke-virtual {p0}, Lcom/google/android/apps/camera/debug/shottracker/db/DbDebugDumper;->getContext()Landroid/content/Context;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    const-string v5, "\nSUSPECT SHOTS"

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_66
    invoke-direct {v1, v2}, Lhdp;-><init>(I)V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_67
    const/4 v2, 0x3

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_68
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_69
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_6a
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6b
    cmp-long v5, v5, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-static {v1, v2, v3, v4}, Ldvw;->z(Left;ZZLubk;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method
