.class public final synthetic Lstv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;II)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput p3, p0, Lstv;->a:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lstv;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    iput p4, p0, Lstv;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lstv;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;ILttj;I)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lstv;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lstv;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Lstv;->a:I

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

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    iput p4, p0, Lstv;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Lstz;Lryb;II)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lstv;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_5

    nop

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
    iput p4, p0, Lstv;->d:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iput-object p1, p0, Lstv;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    iput p3, p0, Lstv;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 5

    goto/32 :goto_34

    nop

    nop

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->c(ILttj;)V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_1
    check-cast v0, Lttj;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2
    iget v1, v0, Lstz;->e:I

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    aget-object v3, v1, v2

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lstv;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v4, v4, Lsbh;->c:I

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lstv;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    iget v1, p0, Lstv;->a:I

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

    nop

    nop

    :goto_9
    iput v4, v0, Lstz;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_a
    iget-object v2, p0, Lstv;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_b
    iget-object v1, p0, Lstv;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lstv;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_d
    check-cast p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_11
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    :goto_12
    iget v0, p0, Lstv;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_13
    move-object v4, v2

    nop

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

    :goto_14
    check-cast v0, Lstz;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x0

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_17
    check-cast v1, Lssk;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, v1, v0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->c(ILttj;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lstv;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v1, p0, Lstv;->a:I

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

    :goto_1b
    if-lt v1, v4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_3

    nop

    nop

    :goto_1d
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1e
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_1f
    iget v2, p0, Lstv;->a:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_20
    move v1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v2, v1}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v1, Landroid/view/View;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_31

    nop

    :goto_24
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_26
    check-cast v4, Lsbh;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    add-int/lit8 v4, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_28
    iget-object v0, p0, Lstv;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v1, 0xf

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2a
    const/4 v1, 0x2

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_2b
    aput-object v4, v1, v2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2c
    iget v0, p0, Lstv;->d:I

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0}, Lstz;->a()V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    return-void

    nop

    nop

    :goto_2f
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_30
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_31
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_33
    iget-object v1, v0, Lstz;->d:[Lsui;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const v0, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_35
    return-void

    nop

    :goto_36
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v0, :cond_3

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->aq(Landroid/view/View;IZ)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_30

    nop

    nop

    :goto_3a
    check-cast v0, Lttj;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    check-cast p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;

    nop

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

    :goto_3c
    invoke-virtual {v1, v3}, Lssk;->f(Lsui;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3d
    if-ne v0, v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_4
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v0, p0, Lstv;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_32

    nop

    :goto_40
    if-ne v0, v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_41
    iput v4, v0, Lstz;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_42
    return-void

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    check-cast v2, Lryb;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_45
    check-cast p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop
.end method
