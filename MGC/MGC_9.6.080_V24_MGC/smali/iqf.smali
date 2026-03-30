.class public final synthetic Liqf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Liqg;

.field public final synthetic b:J

.field public final synthetic c:Liow;

.field public final synthetic d:Liow;

.field public final synthetic e:Lcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;


# direct methods
.method public synthetic constructor <init>(Liqg;JLiow;Liow;Lcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p4, p0, Liqf;->c:Liow;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p5, p0, Liqf;->d:Liow;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Liqf;->a:Liqg;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-wide p2, p0, Liqf;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p6, p0, Liqf;->e:Lcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v1, p0, Liqf;->b:J

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iget-object v5, p0, Liqf;->e:Lcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Liqf;->a:Liqg;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    return-object p0

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    :goto_7
    invoke-virtual/range {v0 .. v5}, Liqg;->f(JLiow;Liow;Lcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v3, p0, Liqf;->c:Liow;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v4, p0, Liqf;->d:Liow;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method
