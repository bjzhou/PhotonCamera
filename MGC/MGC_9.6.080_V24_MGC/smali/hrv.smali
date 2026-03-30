.class public final synthetic Lhrv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput p2, p0, Lhrv;->b:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iput-object p1, p0, Lhrv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 29

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Llvt;->g:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v2, v1}, Lnar;->G(Landroid/content/Intent;)V

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_2
    move-object v1, v0

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, v0, Lhrv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_5
    check-cast v1, Landroid/preference/PreferenceScreen;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8
    iget-object v2, v0, Lhxi;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_9
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_a
    move-object v8, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, v0, Lhxi;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_c
    invoke-direct {v2, v0}, Lnar;-><init>(Landroid/app/Activity;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    iput-object v5, v2, Lomw;->b:Landroid/os/Bundle;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v7, v2, Lomw;->n:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1}, Lohh;->a(Lohz;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_11
    const v1, 0x15

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

    nop

    :goto_12
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_13
    invoke-interface {v4, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_16
    iput-object v1, v2, Lomw;->c:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v3, "android.os.storage.action.MANAGE_STORAGE"

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_18
    invoke-static {v1}, Lolx;->aj(Lohk;)Loqy;

    :goto_19
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_1a
    invoke-static {v2, v1}, Lfxi;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_1b
    const/16 v22, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_1c
    iput-object v8, v2, Lomw;->s:Lomq;

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

    :goto_1d
    const-string v1, ".USER_INITIATED_FEEDBACK_REPORT"

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_1e
    invoke-virtual {v9}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v9

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v1, v1, Loip;->a:Lohe;

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_20
    invoke-direct {v9}, Landroid/app/ApplicationErrorReport;-><init>()V

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_21
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :cond_0
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_40

    nop

    nop

    :goto_24
    goto/32 :goto_72

    nop

    nop

    :goto_25
    check-cast v5, Landroid/preference/Preference;

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v13, 0x0

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/32 :goto_46

    nop

    nop

    :goto_29
    check-cast v0, Landroid/app/Activity;

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v0, v0, Lhrv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2b
    iput-object v8, v2, Lomw;->r:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2c
    const/16 v28, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v1, v0, Lhxi;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_2e
    add-int/lit8 v3, v3, 0x1

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    return v0

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_92

    nop

    nop

    :goto_31
    return v3

    nop

    nop

    :goto_32
    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_96

    nop

    :goto_34
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_35
    check-cast v0, Landroid/content/Context;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_37
    new-instance v4, Lohe;

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iput-object v8, v2, Lomw;->j:Lone;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_39
    const/16 v16, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    check-cast v1, Landroid/preference/PreferenceScreen;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_3b
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_3d
    move v1, v2

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

    :goto_3e
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_3f
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    :goto_40
    goto/32 :goto_6d

    nop

    nop

    :goto_41
    iput-boolean v3, v2, Lomw;->q:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v0, v1}, Lhxi;->c(Landroid/preference/PreferenceScreen;)V

    goto/32 :goto_84

    nop

    nop

    :goto_43
    new-instance v9, Ljava/security/SecureRandom;

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/4 v0, 0x1

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_45
    iget-object v5, v5, Liof;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_46
    iget-object v0, v0, Lhrv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const/16 v20, 0x0

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_48
    new-instance v1, Landroid/content/Intent;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_49
    iput-object v0, v2, Lomw;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_4b
    if-ne v1, v4, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_4c
    invoke-static {v0}, Lqms;->a(Landroid/content/Context;)V

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_4e
    if-ne v1, v2, :cond_2

    nop

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

    :cond_2
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_4f
    check-cast v1, Landroid/preference/PreferenceScreen;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_50
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_51
    iput-boolean v3, v2, Lomw;->i:Z

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    new-instance v9, Landroid/app/ApplicationErrorReport;

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    new-instance v6, Ljava/util/ArrayList;

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

    nop

    nop

    :goto_54
    iget-object v0, v4, Lohe;->h:Lohh;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-direct/range {v8 .. v28}, Lomw;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/app/ApplicationErrorReport;Ljava/lang/String;Lcom/google/android/gms/common/data/BitmapTeleporter;Ljava/lang/String;Ljava/util/List;ZLone;Lomz;ZLandroid/graphics/Bitmap;Ljava/lang/String;ZJZLjava/lang/String;Lomq;)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_56
    const/4 v14, 0x0

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    if-ne v1, v4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget-object v0, v0, Lhxi;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_59
    iput-object v8, v2, Lomw;->m:Landroid/graphics/Bitmap;

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    check-cast v5, Liof;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_5b
    iput-boolean v3, v2, Lomw;->l:Z

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_5c
    iget-object v4, v0, Lhxi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_5d
    iput-object v8, v2, Lomw;->k:Lomz;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_5e
    sget v1, Lfxi;->a:I

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_5f
    const/4 v4, 0x3

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v2, v0, Lhxi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_62
    move-object/from16 v15, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_63
    const/16 v26, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_64
    iput-wide v0, v2, Lomw;->p:J

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_65
    check-cast v1, Loip;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    goto/32 :goto_aa

    nop

    nop

    :goto_67
    iget-object v0, v0, Lhrv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_68
    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6a
    const/16 v19, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_6c
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_33

    nop

    :goto_6d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_6e
    if-nez v5, :cond_5

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_79

    nop

    nop

    nop

    :goto_6f
    return v2

    nop

    nop

    :goto_70
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    check-cast v0, Lmjv;

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_72
    if-lt v3, v1, :cond_6

    nop

    goto/32 :goto_89

    nop

    :cond_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_73
    const v8, 0x7f1401e2

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    move-object v12, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_75
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_76
    return v1

    nop

    :goto_77
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_78
    new-instance v15, Lomw;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_79
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_7a
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iput-object v6, v2, Lomw;->h:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_7d
    const v0, 0x12

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    new-instance v11, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7f
    check-cast v0, Lhxi;

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_80
    new-instance v2, Lnar;

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

    :goto_81
    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    :goto_82
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_83
    invoke-direct {v7}, Landroid/app/ApplicationErrorReport;-><init>()V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_84
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_85
    new-instance v1, Lomu;

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_86
    check-cast v0, Ljly;

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_87
    invoke-direct {v4, v1}, Lohe;-><init>(Landroid/content/Context;)V

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_88
    goto/16 :goto_24

    nop

    nop

    nop

    :goto_89
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-direct {v9}, Ljava/security/SecureRandom;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_8d
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_a7

    nop

    nop

    :goto_8e
    new-instance v5, Landroid/os/Bundle;

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    :goto_8f
    move-object v2, v15

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_90
    const/16 v21, 0x0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_92
    sget v1, Ljly;->c:I

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    check-cast v2, Landroid/preference/PreferenceScreen;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_94
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    return v1

    nop

    nop

    nop

    :goto_96
    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_97
    check-cast v0, Landroid/app/Activity;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_98
    const/16 v17, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_99
    const/4 v4, 0x2

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-direct {v1, v0, v2, v3, v4}, Lomu;-><init>(Lohh;Lomw;J)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    check-cast v0, Lhxi;

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    iget-object v0, v0, Ljly;->b:Llvt;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9e
    iput-object v8, v2, Lomw;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    const-string v7, "-"

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_a1
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_a2
    const/4 v4, 0x4

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_a3
    goto/16 :goto_19

    nop

    :goto_a4
    goto/32 :goto_67

    nop

    nop

    :goto_a5
    iput-object v8, v2, Lomw;->f:Lcom/google/android/gms/common/data/BitmapTeleporter;

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_a6
    iget v1, v0, Lhrv;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a7
    new-instance v7, Landroid/app/ApplicationErrorReport;

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    sget v1, Ljly;->c:I

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

    :goto_a9
    iput-boolean v3, v2, Lomw;->o:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_aa
    const-string v2, "android_default"

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    check-cast v0, Landroid/app/Activity;

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    const-wide/16 v24, 0x0

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_ad
    const/16 v18, 0x0

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_ae
    iget-object v0, v0, Lhrv;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_af
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_b0
    const/16 v23, 0x0

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_b1
    sget v1, Lfxi;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_b2
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    iget-object v1, v0, Lhxi;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b4
    if-ne v1, v4, :cond_7

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_48

    nop

    nop

    :goto_b5
    iget-object v1, v0, Lhxi;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    const/16 v27, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_b7
    iget-object v0, v0, Lhrv;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-virtual {v0, v4}, Lmjv;->z(I)V

    goto/32 :goto_31

    nop

    nop
.end method
