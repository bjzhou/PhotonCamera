.class public final Lhsg;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lpet;

.field public final b:Landroid/os/Handler;

.field public c:Lpci;

.field public d:Lpci;


# direct methods
.method public constructor <init>(Lpet;Landroid/os/Handler;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lhsg;->a:Lpet;

    nop

    goto/32 :goto_2

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

    :goto_2
    iput-object p2, p0, Lhsg;->b:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lhsg;->d:Lpci;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lhsg;->d:Lpci;

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    :goto_6
    invoke-interface {v0}, Lpci;->close()V

    goto/32 :goto_3

    nop

    nop

    nop
.end method
