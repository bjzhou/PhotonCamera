.class public final Licw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltun;


# instance fields
.field private final a:Ltxm;


# direct methods
.method public constructor <init>(Ltxm;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Licw;->a:Ltxm;

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

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Licw;->b()Landroid/content/UriMatcher;

    move-result-object p0

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final b()Landroid/content/UriMatcher;
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    goto/32 :goto_9

    nop

    nop

    :goto_1
    const-string v1, "processing/#"

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2
    const/4 v2, 0x5

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lhoo;->b()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_5
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v1, "discover/*"

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Licw;->a:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_8
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_9
    const-string v1, "icon/#/badge"

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_a
    const v0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v1, "delete/#"

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    :goto_10
    const-string v1, "icon/#/interact"

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

    :goto_11
    check-cast p0, Lhoo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_12
    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_13
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_17
    const/4 v2, 0x3

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

    nop

    :goto_18
    const/16 v2, 0x8

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

    :goto_19
    const/16 v2, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_7

    nop

    nop

    :goto_1c
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1d
    const-string v1, "type/*"

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1e
    new-instance v0, Landroid/content/UriMatcher;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v1, "processing"

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_20
    sget-object v1, Lcom/google/android/apps/camera/contentprovider/Hg/tkLn;->xsb:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_22
    const/4 v2, 0x7

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_23
    return-object v0

    nop

    :goto_24
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_26
    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    goto/32 :goto_1d

    nop

    nop

    :goto_27
    const-string v1, "data/*"

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v2, 0x6

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2a
    const/4 v1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2b
    rem-int v0, v0, v1

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

    nop

    :goto_2c
    const/16 v2, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2d
    const-string v1, "icon/#/dialog"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2e
    const v1, 0x4

    nop

    goto/32 :goto_21

    nop

    nop
.end method
