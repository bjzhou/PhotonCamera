.class public final Lft;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lgi;


# instance fields
.field a:Landroid/content/Context;

.field public b:Landroid/view/LayoutInflater;

.field c:Lfx;

.field public d:Landroid/support/v7/view/menu/ExpandedMenuView;

.field public e:Lgh;

.field public f:Lfs;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lft;->a:Landroid/content/Context;

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

    :goto_4
    iput-object p1, p0, Lft;->b:Landroid/view/LayoutInflater;

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

    nop
.end method


# virtual methods
.method public final a()Landroid/widget/ListAdapter;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lft;->f:Lfs;

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

    :goto_1
    iput-object v0, p0, Lft;->f:Lfs;

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lfs;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, p0}, Lfs;-><init>(Lft;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lft;->f:Lfs;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    :goto_7
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Landroid/content/Context;Lfx;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lfs;->notifyDataSetChanged()V

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lft;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p2, p0, Lft;->c:Lfx;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Lft;->b:Landroid/view/LayoutInflater;

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lft;->f:Lfs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lft;->b:Landroid/view/LayoutInflater;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Lft;->a:Landroid/content/Context;

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
.end method

.method public final c(Lfx;Z)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lft;->e:Lgh;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-interface {p0, p1, p2}, Lgh;->a(Lfx;Z)V

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Lgh;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop
.end method

.method public final e()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(Lgp;)Z
    .locals 5

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/high16 v3, 0x20000

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_30

    nop

    :goto_2
    iput-object v3, v4, Ldm;->n:Landroid/widget/ListAdapter;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1}, Ldr;->getWindow()Landroid/view/Window;

    move-result-object v1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v4, v3}, Lfx;->g(Lgi;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_1
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v2, 0x3eb

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Ldr;->show()V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v2}, Ldq;->b()Ldr;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_b
    iget-object v3, v1, Lfx;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x8

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_31

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Lfx;->hasVisibleItems()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    iput-object v3, v4, Ldm;->e:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v3, v4}, Lft;-><init>(Landroid/content/Context;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v2}, Ldq;->a()Landroid/content/Context;

    move-result-object v4

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

    nop

    :goto_13
    iput-object v0, v3, Lft;->e:Lgh;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_14
    if-nez p0, :cond_2

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1, v0}, Ldr;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_16
    or-int/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v1, v1, Lfx;->e:Ljava/lang/CharSequence;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_18
    iget-object v1, v0, Lfy;->b:Ldr;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v0, v4, Ldm;->o:Landroid/content/DialogInterface$OnClickListener;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_1a
    iget-object v1, v0, Lfy;->b:Ldr;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v3}, Lft;->a()Landroid/widget/ListAdapter;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object v3, v0, Lfy;->c:Lft;

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

    :goto_1d
    const v1, 0xa

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object v3, v4, Ldm;->c:Landroid/graphics/drawable/Drawable;

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

    nop

    nop

    :goto_1f
    iget-object v3, v0, Lfy;->c:Lft;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_20
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_21
    new-instance v3, Lft;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v1, v0, Lfy;->a:Lfx;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_23
    iput-object v1, v0, Lfy;->b:Ldr;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_24
    new-instance v0, Lfy;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_25
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_26
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v4, v2, Ldq;->a:Ldm;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v2, v3}, Ldq;-><init>(Landroid/content/Context;)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2b
    iget-object v3, v0, Lfy;->c:Lft;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2c
    goto :goto_39

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v3, v1, Lfx;->f:Landroid/graphics/drawable/Drawable;

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

    :goto_2f
    iget-object v4, v0, Lfy;->a:Lfx;

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

    nop

    :goto_30
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_32
    iget-object p0, p0, Lft;->e:Lgh;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_33
    iget-object v0, v0, Lfy;->b:Ldr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_34
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_35
    return p0

    nop

    :goto_36
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_37
    if-nez v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v2, v1}, Ldq;->e(Ljava/lang/CharSequence;)V

    :goto_39
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-interface {p0, p1}, Lgh;->b(Lfx;)Z

    :goto_3b
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    new-instance v2, Ldq;

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

    nop

    nop

    :goto_3d
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v2, v0}, Ldq;->d(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v3, v1, Lfx;->g:Landroid/view/View;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_40
    invoke-direct {v0, p1}, Lfy;-><init>(Lfx;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g(Lfz;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop
.end method

.method public final h(Lfz;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lft;->f:Lfs;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lfs;->notifyDataSetChanged()V

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p2, p3}, Lfs;->a(I)Lfz;

    move-result-object p2

    nop

    goto/32 :goto_5

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
    invoke-virtual {p1, p2, p0, p3}, Lfx;->A(Landroid/view/MenuItem;Lgi;I)Z

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iget-object p2, p0, Lft;->f:Lfs;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iget-object p1, p0, Lft;->c:Lfx;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    const/4 p3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method
