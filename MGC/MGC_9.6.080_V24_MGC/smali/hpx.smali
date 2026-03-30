.class public final synthetic Lhpx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lhqd;


# instance fields
.field private final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lhpx;->a:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lhpx;->a:I

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Lgdm;-><init>(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v0, 0xd

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-class v0, Lmkn;

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

    :goto_6
    return-object p0

    nop

    :goto_7
    new-instance p0, Lgdm;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/16 v0, 0xe

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

    :goto_a
    invoke-direct {p0, v0}, Lgdm;-><init>(I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    new-instance p0, Lgdm;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    invoke-static {v0, p0}, Lcom/google/android/apps/camera/debug/contentprovider/DebugContentProvider;->a(Ljava/lang/Class;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    invoke-static {v0, p0}, Lcom/google/android/apps/camera/debug/contentprovider/DebugContentProvider;->a(Ljava/lang/Class;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    const-class v0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method
