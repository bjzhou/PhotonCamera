.class public final Lqyd;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v2, v0, v1}, Lryb;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryb;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v10, 0x0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v6, "is_pending"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1e

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v7, "is_visible"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v1, "mime_type"

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static/range {v5 .. v11}, Lryy;->K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lryy;

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_b
    const-string v0, "media_type"

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v3, "restore_path"

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    const-string v4, "special_type_id"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    const-string v1, "utc_timestamp"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_10
    const-string v8, "media_type"

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_11
    const-string v1, "file"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v0, Lqyg;->a:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_14
    const-string v5, "file_name"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_16
    const-string v2, "progress_percentage"

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_17
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_18
    sput-object v0, Lqyd;->a:Landroid/net/Uri;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_19
    const-string v9, "mime_type"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_1b
    sget-object v10, Lcom/google/android/apps/camera/imax/cyclops/capture/xzG/uebAI;->azRDfzP:Ljava/lang/String;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v2, "file_name"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_17

    nop

    nop

    :goto_1f
    const-string v0, "timezone_offset"

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method
