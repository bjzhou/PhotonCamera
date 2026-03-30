.class public Lhgk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lhgr;
.implements Lhgo;


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Lrss;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Liof;

.field private final f:Liof;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lhgk;->a:Lsdb;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "hgk"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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

.method public constructor <init>(Liof;Liof;Lrss;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lhgk;->f:Liof;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p4, p0, Lhgk;->c:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iput-object p5, p0, Lhgk;->d:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lhgk;->e:Liof;

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
    iput-object p3, p0, Lhgk;->b:Lrss;

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method private static c(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    :goto_0
    const v1, 0x6

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    const-string v1, "mimetype"

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string p1, "data1"

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

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_9
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    const v0, 0x20

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    invoke-static {p3}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    new-instance v0, Landroid/content/ContentValues;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_15
    const-string p2, "data2"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method private static d(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_f

    nop

    nop

    :goto_1
    const v1, 0x16

    nop

    nop

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

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v1, "Must have valid field name"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_6
    invoke-static {p1}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, v1}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    invoke-static {p2}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    :goto_10
    xor-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .locals 9

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v4, v2, Lhgw;->d:Ltkv;

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

    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v5, "vnd.android.cursor.item/website"

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v4, v2, Lhgw;->e:Ljava/lang/String;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v3, v5, v6, v4}, Lhgk;->c(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;)V

    :goto_6
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lhgk;->c:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0, v4}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    const-string v7, "vnd.android.cursor.item/email_v2"

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v3, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v5, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_f
    check-cast p0, Lhgw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_10
    const/4 v6, 0x2

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v5, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v2, p0, Lhgk;->b:Lrss;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v3, v7, v8, v5}, Lhgk;->c(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;)V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_14
    const-string v4, "vnd.android.cursor.item/organization"

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_12

    nop

    nop

    :goto_16
    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

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

    nop

    :goto_17
    const-string v1, "notes"

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_18
    iget-object v2, v2, Lhgw;->h:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v2, p0, Lhgk;->b:Lrss;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1a
    iget-object v4, v2, Lhgw;->c:Ltkv;

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

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

    :goto_1c
    iget-object v2, v2, Lhgw;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_1d
    const-string v1, "name"

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1e
    if-eqz v4, :cond_1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v0, Landroid/content/Intent;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :goto_22
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v8, 0x3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v4, v2, Lhgw;->f:Ljava/lang/String;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v3, v7, v6, v5}, Lhgk;->c(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_45

    nop

    nop

    :goto_28
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v3, v5, v7, v4}, Lhgk;->c(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;)V

    :goto_2a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, v0, Lhgw;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2c
    const/4 v5, 0x1

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const-string v7, "vnd.android.cursor.item/phone_v2"

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_31
    const-string v2, "vnd.android.cursor.dir/contact"

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

    nop

    :goto_32
    const-string v3, "android.intent.action.INSERT"

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v7, 0x5

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

    nop

    :goto_34
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    sget-object v0, Lhgk;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_36
    check-cast v2, Lhgw;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v4, v2, Lhgw;->e:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_38
    invoke-static {v0, v1, v2}, Lhgk;->d(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static {v0, v1, p0}, Lhgk;->d(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_41

    nop

    nop

    :goto_3a
    invoke-interface {v0, v4}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_6a

    nop

    nop

    :goto_3c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v4, v2, Lhgw;->h:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-nez v5, :cond_3

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    check-cast v0, Lscz;

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_41
    return-object v0

    nop

    :goto_42
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_44
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_46
    return-object v0

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_48
    const-string v5, "vnd.android.cursor.item/postal-address_v2"

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_49
    const-string v2, "data"

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4b
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_30

    nop

    :goto_4f
    iget-object v0, p0, Lhgk;->b:Lrss;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_50
    if-eqz v2, :cond_4

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_51
    new-instance v0, Landroid/content/Intent;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_52
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2f

    nop

    :goto_53
    iget-object p0, p0, Lhgk;->b:Lrss;

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_54
    const-string v4, "No contact object present in ResultInfo. Defaulting to sending limited information with Intent. This should not happen"

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_55
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

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

    :goto_56
    iget-object v4, v2, Lhgw;->f:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    if-eqz v4, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_6
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

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

    :goto_5a
    invoke-static {v3, v4, v5, v2}, Lhgk;->c(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;)V

    :goto_5b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5d
    const/16 v4, 0x3d6

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5e
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object p0, p0, Lhgw;->g:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    check-cast v2, Lhgw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_61
    check-cast v0, Lhgw;

    nop

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

    nop

    :goto_62
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_63
    if-nez v5, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_7
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_65
    if-eqz v4, :cond_8

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

    :cond_8
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_66
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_67
    iget-object v0, p0, Lhgk;->b:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_68
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_69
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v2, v0}, Liof;->s(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v2, p0, Lhgk;->f:Liof;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    const v0, 0xc

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v1}, Liof;->q(Landroid/content/Intent;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_9
    iget-object p0, p0, Lhgk;->e:Liof;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x14

    nop

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

    :goto_b
    iget-object v2, p0, Lhgk;->d:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lhgk;->c:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lhgk;->a()Landroid/content/Intent;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

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

    :goto_11
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method
