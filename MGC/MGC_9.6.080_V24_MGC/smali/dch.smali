.class public final Ldch;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcvn;


# instance fields
.field public final a:I

.field public b:Ljava/lang/Float;

.field public c:Ljava/lang/Float;

.field public d:Ldfp;

.field public e:Ldfp;

.field private final f:Ljava/util/List;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Ldch;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    iput-object p1, p0, Ldch;->b:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Ldch;->d:Ldfp;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    iput-object p1, p0, Ldch;->c:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p2, p0, Ldch;->f:Ljava/util/List;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Ldch;->e:Ldfp;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method


# virtual methods
.method public final t()Z
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Ldch;->f:Ljava/util/List;

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

    nop
.end method
