.class public final Lhgm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lhgr;
.implements Lhgo;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Liof;Ljava/lang/String;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lhgm;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput p3, p0, Lhgm;->a:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lhgm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop
.end method

.method public constructor <init>(Liof;Ljava/lang/String;I[I)V
    .locals 0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    const-string p3, "shop"

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

    :goto_2
    const-string p1, "https://google.com/search"

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    const-string p3, "q"

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

    :goto_4
    iput-object p1, p0, Lhgm;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

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

    :goto_6
    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string p3, "google-camera"

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    iput p3, p0, Lhgm;->a:I

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string p2, "source"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_c
    iput-object p1, p0, Lhgm;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_c

    nop

    nop

    :goto_e
    const-string p2, "tbm"

    nop

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

    :goto_f
    return-void

    nop

    :goto_10
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .locals 4

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    if-ne v0, v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    :goto_3
    invoke-static {v3, p0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

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

    :goto_4
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v0, p0, Lhgm;->a:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lhgm;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lhgm;->b:Ljava/lang/Object;

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

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_b
    const-string v1, "android.intent.action.VIEW"

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p0, Landroid/net/Uri;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Landroid/content/Intent;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Landroid/content/Intent;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v2, "mailto:"

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    return-object v0

    nop

    :goto_13
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v2, 0x3

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_15
    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_16
    const-string v3, "tel"

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

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_18
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_1a
    check-cast p0, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p0, p0, Lhgm;->b:Ljava/lang/Object;

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

    :goto_1c
    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast p0, Ljava/lang/String;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v0, Landroid/content/Intent;

    nop

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

    :goto_1f
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_f

    nop

    nop

    :goto_21
    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_22
    const-string v2, ""

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_2

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_2
    goto/32 :goto_29

    nop

    :goto_24
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_25
    return-object v0

    nop

    nop

    :goto_26
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v0, 0x10

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p0, p0, Lhgm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2d
    const-string v1, "query"

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast p0, Ljava/lang/String;

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2f
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_30
    if-ne v0, v2, :cond_3

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2f

    nop

    nop

    :goto_31
    const v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-ne v0, v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    new-instance v0, Landroid/content/Intent;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_34
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_36
    iget-object p0, p0, Lhgm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const-string v1, "android.intent.action.WEB_SEARCH"

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

    :goto_38
    new-instance v0, Landroid/content/Intent;

    nop

    goto/32 :goto_1d

    nop

    nop
.end method

.method public final b()V
    .locals 2

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lhgm;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v0, Liof;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    invoke-virtual {v0, p0}, Liof;->q(Landroid/content/Intent;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v0, Liof;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lhgm;->a()Landroid/content/Intent;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x2

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lhgm;->a()Landroid/content/Intent;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, p0}, Liof;->q(Landroid/content/Intent;)V

    goto/32 :goto_9

    nop

    nop

    :goto_f
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_11
    if-ne v0, v1, :cond_2

    nop

    goto/32 :goto_a

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v0, p0, Lhgm;->a:I

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_13
    const v1, 0x1d

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lhgm;->a()Landroid/content/Intent;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    :goto_16
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0xa

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Lhgm;->a()Landroid/content/Intent;

    move-result-object p0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_16

    nop

    nop

    :goto_1b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast v0, Liof;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lhgm;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lhgm;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0, p0}, Liof;->q(Landroid/content/Intent;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Lhgm;->c:Ljava/lang/Object;

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

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_23
    check-cast v0, Liof;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_24
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Lhgm;->a()Landroid/content/Intent;

    move-result-object p0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_4

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

    :cond_4
    goto/32 :goto_1a

    nop

    :goto_27
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_28
    check-cast v0, Liof;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_29
    iget-object v0, p0, Lhgm;->c:Ljava/lang/Object;

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

    :goto_2a
    invoke-virtual {v0, p0}, Liof;->q(Landroid/content/Intent;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, p0}, Liof;->q(Landroid/content/Intent;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    return-void

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_20

    nop

    nop

    nop
.end method
