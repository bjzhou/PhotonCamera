.class public final Lqzg;
.super Lbo;
.source "PG"


# instance fields
.field public a:Landroid/widget/ArrayAdapter;

.field public b:Lcom/google/android/libraries/social/licenses/LicenseMenuActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lbo;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p1, Lcom/google/android/libraries/social/licenses/LicenseMenuActivity;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lqzg;->b:Lcom/google/android/libraries/social/licenses/LicenseMenuActivity;

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    invoke-super {p0, p1}, Lbo;->onAttach(Landroid/content/Context;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lbo;->getActivity()Lbr;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    instance-of v0, p1, Lcom/google/android/libraries/social/licenses/LicenseMenuActivity;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    const p0, 0x7f0e00b1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p3, 0x0

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

.method public final onDestroy()V
    .locals 4

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/IllegalStateException;

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

    :goto_1
    const v2, 0xd431

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Lyp;->a:Z

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_5
    aput-object v3, v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_6
    iget-object v1, p0, Lyp;->c:[Ljava/lang/Object;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    :goto_a
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    :goto_c
    invoke-static {v0, v1, v2}, Lys;->a([III)I

    move-result v0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v3, Lyq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lecq;->b:Lecu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-super {p0}, Lbo;->onDestroy()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v0, "destroyLoader must be called on the main thread"

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lecq;->b:Lecu;

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

    :goto_13
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :goto_14
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v1, p0, Lyp;->d:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Lbo;->getActivity()Lbr;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_19
    iget-boolean v0, v0, Lecu;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lecu;->b:Lyp;

    nop

    nop

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

    :goto_1b
    invoke-static {v0}, Lecq;->b(I)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v0, 0x2

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {p0}, Lecq;->a(Leaw;)Lecq;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1f
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_20
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eq v0, v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    :goto_23
    if-gez v0, :cond_5

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_5
    goto/32 :goto_6

    nop

    nop

    :goto_24
    return-void

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    throw p0

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-string v0, "Called while creating a loader"

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_27

    nop

    nop

    :goto_2b
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2c
    const/4 v0, 0x1

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

    :goto_2d
    invoke-virtual {v0}, Lecr;->k()V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_2e
    if-ne v2, v3, :cond_6

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_5

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

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_30
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0}, Lecu;->b()Lecr;

    move-result-object v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_32
    aget-object v2, v1, v0

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_33
    iget-object v0, p0, Lyp;->b:[I

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_34
    iget-object p0, p0, Lecq;->b:Lecu;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop
.end method

.method public final onDetach()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-super {p0}, Lbo;->onDetach()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lqzg;->b:Lcom/google/android/libraries/social/licenses/LicenseMenuActivity;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    goto/32 :goto_3

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eq v1, v2, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_36

    nop

    nop

    :goto_3
    const v0, 0x13

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1d

    nop

    nop

    :goto_7
    const/4 v2, 0x3

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_8
    const-string p2, "Object returned from onCreateLoader must not be a non-static inner member class: "

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1, p2, p0}, Lecr;->l(Leaw;Lqzg;)V

    :goto_a
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v2}, Lecq;->b(I)Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1}, Lecu;->b()Lecr;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, v0, Lecq;->b:Lecu;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_11
    invoke-static {v2}, Lecq;->b(I)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_12
    const v3, 0x7f0e00ae

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_13
    const v4, 0x7f0b0273

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Lecu;->a()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v1, v0, v3, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    goto/32 :goto_29

    nop

    nop

    :goto_16
    if-nez v2, :cond_1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez p2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    :goto_18
    const-string p1, "Called while creating a loader"

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1a
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_25

    nop

    :goto_1b
    new-instance p2, Lqzf;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

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

    :goto_1d
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

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

    :goto_1e
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

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

    nop

    nop

    :goto_1f
    check-cast p1, Landroid/widget/ListView;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_20
    if-eqz v1, :cond_4

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_4
    :try_start_0
    iget-object v1, v0, Lecq;->b:Lecu;

    nop

    nop

    const/4 v3, 0x1

    nop

    iput-boolean v3, v1, Lecu;->c:Z

    nop

    new-instance v1, Lecw;

    nop

    nop

    nop

    invoke-virtual {p0}, Lbo;->getActivity()Lbr;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v3}, Lecw;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Class;->isMemberClass()Z

    move-result v3

    nop

    if-eqz v3, :cond_6

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    nop

    nop

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    nop

    nop

    if-eqz v3, :cond_5

    nop

    nop

    nop

    goto :goto_21

    nop

    nop

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    new-instance p1, Ljava/lang/StringBuilder;

    nop

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    nop

    nop

    :cond_6
    :goto_21
    new-instance p2, Lecr;

    nop

    invoke-direct {p2, v1}, Lecr;-><init>(Lecx;)V

    invoke-static {v2}, Lecq;->b(I)Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_7

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_7
    iget-object v1, v0, Lecq;->b:Lecu;

    nop

    nop

    iget-object v1, v1, Lecu;->b:Lyp;

    nop

    nop

    nop

    nop

    const v2, 0xd431

    nop

    invoke-virtual {v1, v2, p2}, Lyp;->f(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :goto_23
    goto/32 :goto_38

    nop

    nop

    :goto_24
    invoke-direct {p2, p0, v0}, Lqzf;-><init>(Lqzg;I)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_27
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v1}, Lecu;->a()V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput-object v1, p0, Lqzg;->a:Landroid/widget/ArrayAdapter;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :goto_2b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v2, 0x2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const p2, 0x7f0b0276

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    new-instance v1, Landroid/widget/ArrayAdapter;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0}, Lbo;->getActivity()Lbr;

    move-result-object v0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {v0}, Lecq;->a(Leaw;)Lecq;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p2, v0, p0}, Lecr;->l(Leaw;Lqzg;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v0, v0, Lecq;->a:Leaw;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object p1, v0, Lecq;->b:Lecu;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_35
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_36
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object p2, v0, Lecq;->a:Leaw;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_39
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3a
    iget-boolean v1, v1, Lecu;->c:Z

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v1, v0, Lecq;->b:Lecu;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_3c
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

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

    :goto_3e
    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v1, v0, Lecq;->b:Lecu;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_40
    const-string p1, "initLoader must be called on the main thread"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_41
    throw p0

    nop

    :goto_42
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_43
    if-eqz v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_44
    iget-object p2, p0, Lqzg;->a:Landroid/widget/ArrayAdapter;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/32 :goto_1b

    nop

    nop

    nop
.end method
