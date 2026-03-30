.class Lcom/CameraLensTogglesOnClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object p1, p0, Lcom/CameraLensTogglesOnClickListener;->this$0:Lcom/CameraLensTogglesRelativeLayout;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v2, Lcom/CameraLensesScan;->sActiveCamIDValue:Ljava/lang/String;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p1, Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    const-string v0, "anBnX3NjYWxpbmdfZW5hYmxlX2tleQ"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    iget-object v1, v0, Lcom/CameraLensTogglesRelativeLayout;->a:Ljava/util/List;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0}, Lcom/a;->ac_mb(Ljava/lang/Object;)I

    move-result v1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Lcom/CameraLensTogglesRelativeLayout;->initButtons()V

    goto/32 :goto_c

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1, v2}, Lcom/CameraLensTogglesRelativeLayout;->Scaling(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_a
    iget-object v0, p0, Lcom/CameraLensTogglesOnClickListener;->this$0:Lcom/CameraLensTogglesRelativeLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v2, p0, p1}, Lcom/CameraLensTogglesConsumer$1;-><init>(Lcom/CameraLensTogglesOnClickListener;Landroid/view/View;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->b()V

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    :goto_f
    iget-object v0, p0, Lcom/CameraLensTogglesOnClickListener;->this$0:Lcom/CameraLensTogglesRelativeLayout;

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

    :goto_10
    iget v0, v0, Lcom/CameraLensTogglesRelativeLayout;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v0, v1}, Lcom/a;->aa(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_12
    invoke-static {v0}, Lcom/a;->VariableKeyActiveLens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lcom/CameraLensTogglesOnClickListener;->this$0:Lcom/CameraLensTogglesRelativeLayout;

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

    :goto_14
    goto/32 :goto_28

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_17
    new-instance v2, Lcom/CameraLensTogglesConsumer$1;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const-string v1, "0"

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v1, "1"

    nop

    nop

    :goto_1e
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sget-boolean v0, Lcom/CameraLensesScan;->sWait:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_24
    goto :goto_1e

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-ne v0, v1, :cond_2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_16

    nop

    nop

    .local p1, "p1":Landroid/view/View;
    :goto_28
    goto/32 :goto_23

    nop

    nop

    :goto_29
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_15

    nop

    nop

    :goto_2a
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1a

    nop

    nop
.end method

.method final synthetic onClickToggle(Landroid/view/View;Landroid/widget/TextView;)V
    .locals 4

    goto/32 :goto_2f

    nop

    nop

    :goto_0
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    :sswitch_0
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_1a

    nop

    nop

    nop

    :sswitch_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v2, Lcom/CameraLensToggles;->ID2:Lcom/CameraLensToggles;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_3
    invoke-static {v0}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    sget-object v2, Lcom/CameraLensToggles;->ID4:Lcom/CameraLensToggles;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_14

    nop

    nop

    :goto_7
    check-cast v0, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_9
    sget-object v1, Lpog;->a:Lpog;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_a
    iget-object v3, p0, Lcom/CameraLensTogglesOnClickListener;->this$0:Lcom/CameraLensTogglesRelativeLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_b
    invoke-virtual {p2}, Landroid/widget/TextView;->getId()I

    move-result v0

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b05b3 -> :sswitch_4
        0x7f0b05b4 -> :sswitch_3
        0x7f0b05b5 -> :sswitch_1
        0x7f0b05b6 -> :sswitch_0
        0x7f0b05b7 -> :sswitch_2
    .end sparse-switch

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v0, v1}, Lcom/a;->aa(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_2c

    nop

    nop

    :goto_f
    iget-object v2, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_10
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v2, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_12
    check-cast v2, Lcom/CameraLens;

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_13
    goto/32 :goto_d

    nop

    .local p1, "p1":Landroid/view/View;
    .local p2, "p2":Landroid/widget/TextView;
    :goto_14
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string v0, "YWN0aXZlX2NhbV9pZF9mcm9udF9rZXk="

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v3, p0, Lcom/CameraLensTogglesOnClickListener;->this$0:Lcom/CameraLensTogglesRelativeLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v1, p0, Lcom/CameraLensTogglesOnClickListener;->this$0:Lcom/CameraLensTogglesRelativeLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v0}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_19
    sput-object v2, Lcom/CameraLensesScan;->sActiveCamIDValue:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v3, p0, Lcom/CameraLensTogglesOnClickListener;->this$0:Lcom/CameraLensTogglesRelativeLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v0, v2}, Lcom/a;->aa(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1e
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput v0, v3, Lcom/CameraLensTogglesRelativeLayout;->d:I

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_20
    check-cast v2, Lcom/CameraLens;

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_21
    if-eqz p2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_24
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_25
    sget-object v2, Lcom/CameraLensToggles;->ID0:Lcom/CameraLensToggles;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_26
    check-cast v2, Lcom/CameraLens;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-eq v0, p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    :goto_28
    iget-object v2, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput v0, v3, Lcom/CameraLensTogglesRelativeLayout;->d:I

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_1a

    nop

    :sswitch_2
    goto/32 :goto_4

    nop

    nop

    :goto_2b
    invoke-static {v0}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_2c
    const-string v0, "cHJlZl9jYW1lcmFfcGljdHVyZXNpemVfYmFja19rZXk="

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const-string v0, "cHJlZl9jYW1lcmFfcGljdHVyZXNpemVfZnJvbnRfa2V5"

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_2e
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2f
    const v0, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_30
    check-cast v0, Ljava/lang/String;

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_31
    check-cast v0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_32
    check-cast v2, Lcom/CameraLens;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    check-cast v2, Lcom/CameraLens;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    sget-object v2, Lcom/CameraLensToggles;->ID1:Lcom/CameraLensToggles;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_36
    iget-object v3, p0, Lcom/CameraLensTogglesOnClickListener;->this$0:Lcom/CameraLensTogglesRelativeLayout;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_37
    sput-object v2, Lcom/CameraLensesScan;->sActiveCamIDValue:Ljava/lang/String;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_38
    iput v0, v3, Lcom/CameraLensTogglesRelativeLayout;->d:I

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v1}, Lcom/CameraLensTogglesRelativeLayout;->getLensFacingMap()Ljava/util/Map;

    move-result-object v1

    nop

    nop

    nop

    sparse-switch v0, :sswitch_data_0

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const-string v0, "YWN0aXZlX2NhbV9pZF9iYWNrX2tleQ=="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iput v0, v3, Lcom/CameraLensTogglesRelativeLayout;->d:I

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

    :goto_3c
    sget-object v0, Lcom/CameraLensesScan;->sActiveCam:Lpog;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3d
    check-cast v0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_3e
    const-string v1, ""

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :sswitch_3
    goto/32 :goto_34

    nop

    nop

    :goto_41
    goto/16 :goto_1e

    nop

    nop

    :sswitch_4
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-static {v0}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_43
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_45
    sget-object v2, Lcom/CameraLensToggles;->ID3:Lcom/CameraLensToggles;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_46
    sget-boolean v0, Lcom/CameraLensesScan;->sWait:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_47
    if-ne v0, v1, :cond_3

    nop

    goto/32 :goto_4c

    nop

    :cond_3
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    sput-object v2, Lcom/CameraLensesScan;->sActiveCamIDValue:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_49
    if-eqz v0, :cond_4

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_4a
    sput-object v2, Lcom/CameraLensesScan;->sActiveCamIDValue:Ljava/lang/String;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_4b
    goto/16 :goto_1e

    nop

    nop

    :goto_4c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    sput-object v2, Lcom/CameraLensesScan;->sActiveCamIDValue:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iput v0, v3, Lcom/CameraLensTogglesRelativeLayout;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_4f
    iget-object v2, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_50
    invoke-static {v0, v1}, Lcom/a;->aa(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_51
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v3, p0, Lcom/CameraLensTogglesOnClickListener;->this$0:Lcom/CameraLensTogglesRelativeLayout;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_53
    invoke-static {v0, v2}, Lcom/a;->aa(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget-object v2, v2, Lcom/CameraLens;->camera_id:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop
.end method
