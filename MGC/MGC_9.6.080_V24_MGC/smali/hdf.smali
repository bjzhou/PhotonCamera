.class public final Lhdf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltun;


# instance fields
.field private final a:Ltxm;

.field private final b:Ltxm;

.field private final c:Ltxm;


# direct methods
.method public constructor <init>(Ltxm;Ltxm;Ltxm;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p2, p0, Lhdf;->b:Ltxm;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lhdf;->a:Ltxm;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Lhdf;->c:Ltxm;

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
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lhdf;->b()Lhdn;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final b()Lhdn;
    .locals 4

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lhcy;->b()Lgvg;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v0, Landroid/content/SharedPreferences;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Lhdf;->b:Ltxm;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    const v1, 0x15

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

    nop

    :goto_7
    return-object v2

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v1, Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    invoke-direct {v2, v0, v1, p0, v3}, Lhdn;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[C)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    invoke-interface {v1}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lhdf;->c:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    :goto_f
    check-cast p0, Lhcy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v2, Lhdn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_13
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_15
    iget-object v0, p0, Lhdf;->a:Ltxm;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method
