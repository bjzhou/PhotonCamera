.class public final L_026;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:L_021;


# direct methods
.method public constructor <init>(L_021;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, L_026;->this$0:L_021;

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

.method public static hXtSCxKHVTZdWfJi()Ljava/lang/Object;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->b()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop
.end method


# virtual methods
.method public final run()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    const v1, 0x10

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, L_026;->this$0:L_021;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :catchall_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    :goto_a
    iput-object v1, v0, L_021;->r:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_d
    goto/32 :goto_9

    nop

    :goto_e
    :try_start_0
    iget-object v0, p0, L_026;->this$0:L_021;

    nop

    nop

    nop

    nop

    invoke-static {}, L_026;->hXtSCxKHVTZdWfJi()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    iput-object v1, v0, L_021;->r:Ljava/lang/Object;

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method
