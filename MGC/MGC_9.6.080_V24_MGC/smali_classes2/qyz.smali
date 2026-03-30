.class final Lqyz;
.super Lqzd;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lqzd;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lqvg;Z)I
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    iget-object p0, p2, Lqvg;->c:Ljava/lang/Object;

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

    nop

    :goto_4
    const/16 p2, 0x40

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    :goto_6
    invoke-static {p1, p0}, Ldsw;->ab(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    if-eqz p0, :cond_0

    nop

    nop

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

    :goto_8
    invoke-virtual {p0, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

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

    :goto_a
    check-cast p0, Landroid/net/Uri;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    if-gez p0, :cond_1

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    const-string p0, "android.permission.INTERACT_ACROSS_USERS"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_d
    const/4 p0, 0x3

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method
