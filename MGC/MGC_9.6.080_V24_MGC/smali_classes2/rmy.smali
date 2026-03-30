.class final Lrmy;
.super Lrnd;
.source "PG"


# instance fields
.field final synthetic a:Lrmz;


# direct methods
.method public constructor <init>(Lrmz;Lpic;)V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    :goto_0
    iput-object p1, p0, Lrmy;->a:Lrmz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    :goto_2
    const-string v1, "OnRequestInstallCallback"

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, v1, v2}, Lrpz;-><init>(Ljava/lang/String;[B)V

    goto/32 :goto_9

    nop

    nop

    :goto_7
    new-instance v0, Lrpz;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_9
    invoke-direct {p0, p1, p2}, Lrnd;-><init>(Lrmz;Lpic;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    const/4 v2, 0x0

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

    :goto_b
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final c(Landroid/os/Bundle;)V
    .locals 11

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_1
    sget-object v1, Lcom/google/android/apps/camera/jni/gyro/xfsr/FACWQLkhP;->OxrTxiKzuqPP:Ljava/lang/String;

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

    :goto_2
    check-cast v1, Landroid/app/PendingIntent;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v9, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move-object v8, v2

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_6
    invoke-super {p0, p1}, Lrnd;->c(Landroid/os/Bundle;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7
    const/4 v2, -0x1

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_9
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_a
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eq v7, v2, :cond_0

    nop

    nop

    goto/32 :goto_35

    nop

    :cond_0
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object v3, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct/range {v3 .. v8}, Lrmu;-><init>(IIILjava/lang/Integer;Landroid/app/PendingIntent;)V

    goto/32 :goto_4a

    nop

    nop

    :goto_10
    new-instance v9, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_11
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    goto/32 :goto_44

    nop

    nop

    :goto_13
    invoke-static {p1}, Lrmz;->a(Landroid/os/Bundle;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_14
    new-instance p0, Lrmu;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    invoke-static {v10}, Lrmz;->d(Ljava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v10

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

    :goto_16
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_20

    nop

    nop

    :goto_19
    const/4 v3, 0x0

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_1a
    const/4 v0, 0x0

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

    nop

    :goto_1b
    check-cast v9, Landroid/app/PendingIntent;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lrmy;->a:Lrmz;

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

    :goto_1d
    check-cast p0, Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1e
    return-void

    nop

    :goto_1f
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_20
    move-object v7, v1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v2}, Lqrf;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_25
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_27
    iget-object v0, p0, Lrmy;->c:Lpic;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-string v3, "nonblocking.destructive.intent"

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_29
    invoke-static {v2}, Lrmz;->d(Ljava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v2

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_2a
    const-string v1, "in.app.update.priority"

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {v2}, Lrmz;->d(Ljava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v2

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_2d
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2e
    const-string v1, "additional.size.required"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2f
    invoke-static {p0}, Lqrf;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_30
    const-string v1, "client.version.staleness"

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p0, v0}, Lpic;->u(Ljava/lang/Exception;)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_32
    const-string v1, "version.code"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_33
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_18

    nop

    nop

    :goto_35
    goto/32 :goto_41

    nop

    nop

    :goto_36
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const-string v1, "total.bytes.to.download"

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_39
    const-string v1, "nonblocking.intent"

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_3a
    iget-object p0, p0, Lrpz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_3b
    const-string v2, "blocking.destructive.intent"

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    check-cast v8, Landroid/app/PendingIntent;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_3d
    iget-object p0, p0, Lrmy;->c:Lpic;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const-string p0, "blocking.intent"

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

    :goto_3f
    invoke-interface {v9, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {v3}, Lqrf;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_42
    const-string v1, "install.status"

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_43
    invoke-interface {v9, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-object p0, p0, Lrmz;->e:Lrpz;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_45
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_46
    invoke-static {v1}, Lqrf;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_47
    new-instance v0, Lrnf;

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_49
    const-string v1, "update.availability"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v0, p0}, Lpic;->v(Ljava/lang/Object;)V

    goto/32 :goto_1e

    nop

    nop

    :goto_4b
    invoke-static {v1}, Lrpz;->l(Ljava/io/File;)J

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-direct {v0, p1}, Lrnf;-><init>(I)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4e
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_4f
    const-string v2, "assetpacks"

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_50
    return-void

    nop

    :goto_51
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_52
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_53
    check-cast v3, Landroid/app/PendingIntent;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_55
    invoke-interface {v9, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_58
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-static {p0}, Lrmz;->d(Ljava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5a
    new-instance v1, Ljava/io/File;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-static {p1}, Lrmz;->a(Landroid/os/Bundle;)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    goto/32 :goto_38

    nop

    nop
.end method
