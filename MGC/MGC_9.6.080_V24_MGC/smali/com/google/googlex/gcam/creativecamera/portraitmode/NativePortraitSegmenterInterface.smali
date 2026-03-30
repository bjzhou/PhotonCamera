.class public final Lcom/google/googlex/gcam/creativecamera/portraitmode/NativePortraitSegmenterInterface;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltbo;


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lcom/google/googlex/gcam/creativecamera/portraitmode/NativePortraitSegmenterInterface;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop
.end method

.method public constructor <init>()V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lcom/google/googlex/gcam/creativecamera/portraitmode/NativePortraitSegmenterInterface;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

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
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    invoke-static {}, Lcom/google/googlex/gcam/creativecamera/portraitmode/NativePortraitSegmenterInterface;->init()V

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    :goto_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_11
    const v0, 0x10

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop
.end method

.method private static native init()V
.end method


# virtual methods
.method public native dummyImageProducesReasonableMask()Z
.end method

.method public native getSegmenterHandle()J
.end method

.method public native initSegmenter(JJLjava/lang/String;Ljava/lang/String;ZZZZZ)Z
.end method

.method public native release()V
.end method
