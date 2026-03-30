.class Lcom/CameraLensTogglesOnLongClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/CameraLensTogglesRelativeLayout;


# direct methods
.method constructor <init>(Lcom/CameraLensTogglesRelativeLayout;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lcom/CameraLensTogglesOnLongClickListener;->this$0:Lcom/CameraLensTogglesRelativeLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 10

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    sget-boolean v0, Lcom/CameraLensesScan;->sWait:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1
    sput-object v1, Lcom/a;->menu_pthcr:Ljava/lang/String;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v3, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_3
    invoke-static {v0}, Lcom/a;->aa_mb(Ljava/lang/Object;)I

    move-result v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v2, "pref_screen_extra"

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v2, v1}, Lluq;->c(Landroid/content/Intent;)V

    :goto_6
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v1, "bGVuc19rZXk"

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_8
    goto/32 :goto_1f

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_b
    const/4 v8, 0x0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    :goto_d
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    :goto_e
    const v0, 0x17

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_f
    sput-object v1, Lcom/a;->menu_lens:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v1, Landroid/content/Intent;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_12
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_13
    iget-object v2, v0, Ljhy;->J:Lluq;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_14
    const-string v1, "cl9wdGhjcl9rZXk"

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v0, v0, Lcom/CameraLensTogglesRelativeLayout;->d:I

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eq v0, v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_3
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v2, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1b
    const/4 v9, 0x0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1c
    const/4 v7, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1e
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_16

    nop

    nop

    :goto_20
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_23
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    sget-object v0, Lcom/a;->h:Ljhy;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_25
    iget-object v1, v0, Ljhy;->O:Lmjv;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const-string v3, "bGVuc19rZXk"

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v1}, Lcom/a;->VariableKeyActiveLens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

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

    :goto_28
    const-string v0, "cHJlZl9sb25nX3ByZXNzX2xlbnN0b2dnbGVfa2V5"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_29
    invoke-static {v3}, Lcom/a;->VariableKeyActiveLens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_2a
    invoke-static {v1}, Lcom/a;->VariableKeyActiveLens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2b
    invoke-virtual/range {v1 .. v9}, Lmjv;->v(ILspo;Lspb;Lsjq;Lsqe;Lslp;Lsoj;Lsol;)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2d
    const-class v3, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v0, p0, Lcom/CameraLensTogglesOnLongClickListener;->this$0:Lcom/CameraLensTogglesRelativeLayout;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_30
    iget-object v2, v0, Ljhy;->V:Landroid/content/Context;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop
.end method
