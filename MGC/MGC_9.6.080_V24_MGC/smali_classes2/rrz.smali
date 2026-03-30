.class public final Lrrz;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lrts;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    new-instance v0, Lrrx;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Lrrx;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lrrz;->a:Lrts;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    goto :goto_5

    nop

    nop

    :catchall_0
    goto/32 :goto_0

    nop

    nop

    :goto_3
    new-instance v0, Lrry;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Lrry;-><init>()V

    :goto_5
    goto/32 :goto_1

    nop

    nop

    :goto_6
    return-void

    nop

    nop
.end method
