.class public final Lusd;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Luse;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    instance-of v0, p1, Lusd;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x1

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

    :goto_5
    iget-object p0, p0, Lusd;->a:Luse;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    check-cast p1, Lusd;

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

    :goto_7
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p1, p1, Lusd;->a:Luse;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

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

    :goto_2
    iget-object p0, p0, Lusd;->a:Luse;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method
