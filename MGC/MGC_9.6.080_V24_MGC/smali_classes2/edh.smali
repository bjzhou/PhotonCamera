.class public final Ledh;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Ljava/util/HashSet;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

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
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Ledh;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    sput-object v0, Ledh;->a:Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    const-string v0, "media3.common"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public static declared-synchronized a()V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit v0

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

    nop

    nop

    nop

    :catchall_0
    move-exception v1

    nop

    :try_start_0
    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    throw v1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    :goto_7
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_1
    sget-object v1, Ledh;->a:Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    sget-object v2, Lcom/google/android/apps/camera/ui/eduimageview/JrT/cUhjhcVVea;->oeLMd:Ljava/lang/String;

    nop

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    sget-object v1, Ledh;->b:Ljava/lang/String;

    nop

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    const-string v2, ", media3.muxer"

    nop

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    sput-object v1, Ledh;->b:Ljava/lang/String;

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_a
    const-class v0, Ledh;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    :goto_c
    monitor-exit v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method
