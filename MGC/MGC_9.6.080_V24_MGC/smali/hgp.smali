.class public final Lhgp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lhgr;
.implements Lhgo;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Liof;Lhgj;Landroid/content/Context;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lhgp;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iput p4, p0, Lhgp;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lhgp;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    iput-object p3, p0, Lhgp;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Liof;Ljava/lang/String;Lrss;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lhgp;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iput p4, p0, Lhgp;->a:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Lhgp;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lhgp;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .locals 20

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v6, v6, Lhgu;->g:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_1
    iget-object v1, v0, Lhgp;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v6, :cond_0

    nop

    nop

    goto/32 :goto_c5

    nop

    :cond_0
    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget v2, v0, Lhgv;->b:I

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v6, "?q="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    check-cast v2, Landroid/content/Context;

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

    :goto_7
    const/16 v7, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    if-eqz v3, :cond_2

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_2
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_a
    goto :goto_16

    nop

    nop

    :goto_b
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    iget-object v2, v0, Lhgv;->g:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v3, Lhgu;->a:Lhgu;

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_14
    iget-object v0, v0, Lhgj;->c:Lrss;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_16
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v2, v4, v3, v5}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto/32 :goto_34

    nop

    nop

    :goto_1a
    goto/16 :goto_7d

    nop

    nop

    :goto_1b
    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_1c
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual/range {v6 .. v12}, Ljava/util/Calendar;->set(IIIIII)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v4, "allDay"

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_1f
    move-object v7, v6

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_d9

    nop

    nop

    :goto_22
    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :goto_23
    check-cast v0, Lhgj;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_24
    move/from16 v16, v7

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_27
    iget-wide v1, v0, Lhgx;->b:D

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_28
    iget-object v0, v0, Lhgp;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_29
    sget-object v8, Lhgu;->a:Lhgu;

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_2a
    if-eqz v2, :cond_4

    nop

    nop

    goto/32 :goto_45

    nop

    :cond_4
    goto/32 :goto_c2

    nop

    nop

    :goto_2b
    if-eq v6, v7, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v2, v0, Lhgv;->d:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_2e
    if-eqz v3, :cond_6

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    :cond_6
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const-string v2, "beginTime"

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_30
    move-object v7, v6

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_c1

    nop

    nop

    :goto_32
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_33
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_34
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    move-object v7, v6

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_37
    move-object v9, v6

    nop

    nop

    :goto_38
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v2, v0, Lhgv;->c:Ljava/lang/String;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_3b
    sget-object v6, Lhgu;->a:Lhgu;

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-wide v3, v0, Lhgx;->c:D

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_3e
    iget v8, v8, Lhgu;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v3, v0, Lhgv;->h:Lhgu;

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    sget-object v6, Lhgu;->a:Lhgu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_42
    add-int/lit8 v15, v7, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    :goto_43
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v1

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_45
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_46
    new-instance v1, Landroid/content/Intent;

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_47
    if-eqz v8, :cond_7

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_75

    nop

    nop

    :goto_48
    invoke-virtual {v2, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-lez v0, :cond_8

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_a4

    nop

    :goto_4a
    check-cast v1, Ltkg;

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v0, v0, Lhgp;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_4d
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget v9, v6, Lhgu;->d:I

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_4f
    if-nez v3, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_9
    goto/32 :goto_94

    nop

    nop

    :goto_50
    const-string v4, "com.google.android.calendar"

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    sget-object v6, Lhgu;->a:Lhgu;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_52
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_53
    iget-object v2, v2, Lhgj;->c:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_54
    iget-object v0, v0, Lhgv;->g:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_55
    const-string v3, "eventLocation"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget-object v1, v0, Lhgp;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    :goto_57
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    sget-object v6, Lhgu;->a:Lhgu;

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_59
    sget-object v7, Lhgu;->a:Lhgu;

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget v1, v0, Lhgp;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    check-cast v0, Lhgx;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_5d
    if-eqz v6, :cond_a

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    goto/16 :goto_36

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_61
    iget v7, v7, Lhgu;->d:I

    nop

    goto/32 :goto_dc

    nop

    nop

    :goto_62
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/32 :goto_5a

    nop

    nop

    :goto_63
    iget-object v3, v0, Lhgv;->h:Lhgu;

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget v6, v6, Lhgu;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    if-nez v2, :cond_b

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_66
    move-object v6, v3

    nop

    nop

    :goto_67
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_68
    move/from16 v19, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_69
    iget-object v2, v0, Lhgp;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object v2, v0, Lhgp;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object v0, v0, Lhgp;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    :goto_6d
    const-string v2, "android.intent.action.INSERT"

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_6f
    if-eqz v2, :cond_c

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_71
    move-object v6, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    :goto_74
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_76
    if-eqz v6, :cond_d

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    iget v7, v7, Lhgu;->c:I

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_78
    iget v9, v9, Lhgu;->f:I

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_79
    iget v11, v6, Lhgu;->f:I

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_7a
    if-nez v1, :cond_e

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_7c
    move-object v6, v3

    nop

    :goto_7d
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    check-cast v2, Lhgj;

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_7f
    iget-object v2, v0, Lhgv;->d:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_80
    return-object v1

    nop

    :goto_81
    goto/32 :goto_70

    nop

    nop

    :goto_82
    sget-object v3, Lhgu;->a:Lhgu;

    nop

    nop

    nop

    nop

    nop

    :goto_83
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_84
    return-object v1

    nop

    nop

    :goto_85
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_86
    if-eqz v1, :cond_f

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    :cond_f
    goto/32 :goto_4b

    nop

    nop

    :goto_87
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_88
    if-eqz v7, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    add-int/lit8 v8, v6, -0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8a
    const-string v2, "availability"

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    goto/16 :goto_67

    nop

    nop

    :goto_8c
    goto/32 :goto_66

    nop

    nop

    :goto_8d
    goto/16 :goto_20

    nop

    :goto_8e
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    iget-object v2, v0, Lhgv;->e:Ljava/lang/String;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_90
    invoke-virtual {v1, v2}, Ltkg;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_91
    iget v12, v3, Lhgu;->g:I

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_92
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_93
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/32 :goto_32

    nop

    nop

    :goto_94
    and-int/lit8 v2, v2, 0x2

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_95
    invoke-virtual {v2}, Lrss;->h()Z

    move-result v2

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_96
    iget-object v6, v0, Lhgv;->i:Lhgu;

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_97
    const-string v3, "title"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_98
    check-cast v0, Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_99
    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_9a
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_9b
    iget v10, v6, Lhgu;->e:I

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_9c
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_9d
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto/32 :goto_80

    nop

    nop

    :goto_9e
    move-object v6, v3

    nop

    nop

    nop

    :goto_9f
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    if-eqz v3, :cond_11

    nop

    nop

    goto/32 :goto_83

    nop

    :cond_11
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    move/from16 v18, v9

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    const-string v1, "geo:0,0?q="

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_a3
    new-instance v1, Landroid/content/Intent;

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    goto/32 :goto_81

    nop

    nop

    nop

    :goto_a5
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_a7
    move/from16 v17, v8

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_a8
    const/16 v6, 0xb

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

    :goto_a9
    sget-object v2, Lhgx;->a:Lhgx;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_aa
    check-cast v1, Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_ad
    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_ae
    goto/16 :goto_74

    nop

    nop

    nop

    :goto_af
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    move-object v13, v3

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_b2
    and-int/lit8 v3, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_b3
    sget-object v6, Lhgu;->a:Lhgu;

    nop

    nop

    nop

    nop

    :goto_b4
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b5
    sget-object v7, Lhgu;->a:Lhgu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_b6
    sget-object v7, Lhgu;->a:Lhgu;

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    sget-object v9, Lhgu;->a:Lhgu;

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    if-eqz v6, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :cond_12
    goto/32 :goto_59

    nop

    nop

    nop

    :goto_b9
    goto/16 :goto_de

    nop

    :goto_ba
    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_bb
    if-eqz v3, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_13
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    const/16 v8, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    :goto_bd
    invoke-virtual/range {v13 .. v19}, Ljava/util/Calendar;->set(IIIIII)V

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_be
    if-eqz v6, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    :cond_14
    goto/32 :goto_b6

    nop

    nop

    :goto_bf
    iget-object v2, v0, Lhgv;->e:Ljava/lang/String;

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    check-cast v1, Lrss;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    iget v14, v7, Lhgu;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_c2
    iget-object v2, v0, Lhgv;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_c3
    const-string v5, "endTime"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    goto/16 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    goto/32 :goto_37

    nop

    nop

    :goto_c6
    const-string v3, "description"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    if-eqz v2, :cond_15

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_c9
    const-string v5, "geo:"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    if-eqz v3, :cond_16

    nop

    goto/32 :goto_cc

    nop

    nop

    :cond_16
    goto/32 :goto_58

    nop

    nop

    :goto_cb
    goto/16 :goto_9f

    nop

    nop

    nop

    :goto_cc
    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_cd
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/32 :goto_69

    nop

    nop

    :goto_ce
    goto/16 :goto_31

    nop

    nop

    nop

    :goto_cf
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_d0
    const-string v2, "android.intent.action.VIEW"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_d1
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_d2
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    if-nez v1, :cond_17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_46

    nop

    nop

    :goto_d4
    iget v7, v3, Lhgu;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    if-eqz v3, :cond_18

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_18
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d6
    const v1, 0x15

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    if-eq v6, v8, :cond_19

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    move-object v6, v3

    nop

    nop

    nop

    nop

    :goto_d9
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_da
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :goto_db
    check-cast v0, Lhgv;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_dc
    if-eqz v6, :cond_1a

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    move-object v8, v6

    nop

    nop

    nop

    :goto_de
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_df
    const-string v5, ","

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    const/16 v7, 0x3b

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_e1
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0}, Liof;->q(Landroid/content/Intent;)V

    goto/32 :goto_8

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Liof;->q(Landroid/content/Intent;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v0, Liof;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lhgp;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    iget v0, p0, Lhgp;->a:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lhgp;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lhgp;->a()Landroid/content/Intent;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    invoke-virtual {p0}, Lhgp;->a()Landroid/content/Intent;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p0, Liof;

    nop

    goto/32 :goto_2

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

    :goto_c
    goto/32 :goto_6

    nop

    nop
.end method
