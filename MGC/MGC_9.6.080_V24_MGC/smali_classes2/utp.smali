.class public final Lutp;
.super Lusi;
.source "PG"


# instance fields
.field public final a:Lusq;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Ljava/util/ArrayList;

.field public e:Z

.field public f:I

.field public final g:Lrrf;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public constructor <init>(Ljava/lang/String;Lrrf;Ljava/util/concurrent/Executor;Lusq;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Lutp;->c:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lutp;->d:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    iput-object p2, p0, Lutp;->g:Lrrf;

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

    :goto_4
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Lusi;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lutp;->b:Ljava/lang/String;

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

    :goto_8
    return-void

    nop

    nop

    :goto_9
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p4, p0, Lutp;->a:Lusq;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method
