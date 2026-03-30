.class public final synthetic Lhpz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lhqc;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p1, p0, Lhpz;->a:Ljava/lang/String;

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


# virtual methods
.method public final a(Ljava/util/List;ILmkk;)Z
    .locals 0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p3, Lmkk;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

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
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lhpz;->a:Ljava/lang/String;

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
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

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

    :goto_6
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p0, :cond_1

    nop

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p1, p2}, Lhqe;->c(Ljava/util/List;I)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    nop

    nop
.end method
