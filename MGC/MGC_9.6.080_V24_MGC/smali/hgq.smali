.class public final Lhgq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lhgr;
.implements Lhgo;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Liof;


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m()Landroid/content/Intent;
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v1, Landroid/content/Intent;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lhgq;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_3
    const-string v0, "sms_body"

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

    :goto_4
    goto/32 :goto_19

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lhgq;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_14

    nop

    :cond_1
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_6

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_d
    const-string p0, "text/plain"

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    const-string v0, "android.intent.action.SEND"

    nop

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

    :goto_f
    return-object v1

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_14
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto :goto_1d

    nop

    :goto_17
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1d
    goto/32 :goto_e

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lhgq;->c:Ljava/lang/String;

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

    :goto_1f
    iget-object p0, p0, Lhgq;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    :goto_21
    const-string v2, "address"

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v0}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_24
    const-string v0, "com.android.sms"

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_25
    iget-object v0, p0, Lhgq;->c:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_26
    if-eqz v2, :cond_3

    nop

    goto/32 :goto_17

    nop

    :cond_3
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Liof;Landroid/content/Context;Lrss;)V
    .locals 0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lhgq;->d:Liof;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p3, p1}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    sget-object p1, Lhgy;->a:Lhgy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    iget-object p1, p1, Lhgy;->c:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p1, Lhgy;->a:Lhgy;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    check-cast p1, Lhgy;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lhgq;->b:Ljava/lang/String;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lhgq;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    iget-object p1, p1, Lhgy;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    iput-object p2, p0, Lhgq;->a:Landroid/content/Context;

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

    :goto_b
    check-cast p1, Lhgy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p3, p1}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lhgq;->33f5b80483094659737b73d90f80a8a4m()Landroid/content/Intent;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lhgq;->d:Liof;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p0}, Liof;->q(Landroid/content/Intent;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Lhgq;->33f5b80483094659737b73d90f80a8a4m()Landroid/content/Intent;

    move-result-object p0

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
