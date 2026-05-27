.class public final synthetic Ldpx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ldpy;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Landroid/widget/TextView;

.field public final synthetic f:Landroid/widget/TextView;

.field public final synthetic g:Landroid/widget/TextView;

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:Landroid/widget/ImageView;

.field public final synthetic k:Landroid/widget/ImageView;

.field public final synthetic l:Landroid/widget/ImageView;

.field public final synthetic m:[Landroid/widget/FrameLayout;

.field private final synthetic n:I


# direct methods
.method public synthetic constructor <init>(Ldpy;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;IILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;[Landroid/widget/FrameLayout;I)V
    .locals 0

    iput p14, p0, Ldpx;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldpx;->a:Ldpy;

    iput-object p2, p0, Ldpx;->b:Landroid/view/View;

    iput-object p3, p0, Ldpx;->c:Landroid/view/View;

    iput-object p4, p0, Ldpx;->d:Landroid/view/View;

    iput-object p5, p0, Ldpx;->e:Landroid/widget/TextView;

    iput-object p6, p0, Ldpx;->f:Landroid/widget/TextView;

    iput-object p7, p0, Ldpx;->g:Landroid/widget/TextView;

    iput p8, p0, Ldpx;->h:I

    iput p9, p0, Ldpx;->i:I

    iput-object p10, p0, Ldpx;->j:Landroid/widget/ImageView;

    iput-object p11, p0, Ldpx;->k:Landroid/widget/ImageView;

    iput-object p12, p0, Ldpx;->l:Landroid/widget/ImageView;

    iput-object p13, p0, Ldpx;->m:[Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Ldpx;->n:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Ldpx;->a:Ldpy;

    iget-object v2, v0, Ldpx;->b:Landroid/view/View;

    iget-object v3, v0, Ldpx;->c:Landroid/view/View;

    iget-object v4, v0, Ldpx;->d:Landroid/view/View;

    iget-object v6, v0, Ldpx;->e:Landroid/widget/TextView;

    iget-object v7, v0, Ldpx;->f:Landroid/widget/TextView;

    iget-object v8, v0, Ldpx;->g:Landroid/widget/TextView;

    iget v13, v0, Ldpx;->h:I

    iget v14, v0, Ldpx;->i:I

    iget-object v11, v0, Ldpx;->j:Landroid/widget/ImageView;

    iget-object v12, v0, Ldpx;->k:Landroid/widget/ImageView;

    iget-object v15, v0, Ldpx;->l:Landroid/widget/ImageView;

    iget-object v10, v0, Ldpx;->m:[Landroid/widget/FrameLayout;

    invoke-static/range {p1 .. p1}, Lnom;->h(Landroid/view/View;)V

    sget-object v5, Lgej;->L:Lgej;

    iput-object v5, v1, Ldpy;->d:Lgej;

    iget-object v5, v1, Ldpy;->d:Lgej;

    invoke-static {v5, v2, v3, v4}, Ldpy;->e(Lgej;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iget-object v5, v1, Ldpy;->d:Lgej;

    move v9, v13

    move-object v2, v10

    move v10, v14

    invoke-static/range {v5 .. v10}, Ldpy;->d(Lgej;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;II)V

    iget-object v9, v1, Ldpy;->d:Lgej;

    move-object v10, v11

    move-object v11, v12

    move-object v12, v15

    invoke-static/range {v9 .. v14}, Ldpy;->c(Lgej;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;II)V

    iget-object v1, v1, Ldpy;->d:Lgej;

    invoke-static {v2, v1}, Ldpy;->b([Landroid/widget/FrameLayout;Lgej;)V

    return-void

    :pswitch_0
    iget-object v1, v0, Ldpx;->a:Ldpy;

    iget-object v2, v0, Ldpx;->b:Landroid/view/View;

    iget-object v3, v0, Ldpx;->c:Landroid/view/View;

    iget-object v4, v0, Ldpx;->d:Landroid/view/View;

    iget-object v6, v0, Ldpx;->e:Landroid/widget/TextView;

    iget-object v7, v0, Ldpx;->f:Landroid/widget/TextView;

    iget-object v8, v0, Ldpx;->g:Landroid/widget/TextView;

    iget v13, v0, Ldpx;->h:I

    iget v14, v0, Ldpx;->i:I

    iget-object v11, v0, Ldpx;->j:Landroid/widget/ImageView;

    iget-object v12, v0, Ldpx;->k:Landroid/widget/ImageView;

    iget-object v15, v0, Ldpx;->l:Landroid/widget/ImageView;

    iget-object v10, v0, Ldpx;->m:[Landroid/widget/FrameLayout;

    invoke-static/range {p1 .. p1}, Lnom;->h(Landroid/view/View;)V

    sget-object v5, Lgej;->M:Lgej;

    iput-object v5, v1, Ldpy;->d:Lgej;

    iget-object v5, v1, Ldpy;->d:Lgej;

    invoke-static {v5, v2, v3, v4}, Ldpy;->e(Lgej;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iget-object v5, v1, Ldpy;->d:Lgej;

    move v9, v13

    move-object v2, v10

    move v10, v14

    invoke-static/range {v5 .. v10}, Ldpy;->d(Lgej;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;II)V

    iget-object v9, v1, Ldpy;->d:Lgej;

    move-object v10, v11

    move-object v11, v12

    move-object v12, v15

    invoke-static/range {v9 .. v14}, Ldpy;->c(Lgej;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;II)V

    iget-object v1, v1, Ldpy;->d:Lgej;

    invoke-static {v2, v1}, Ldpy;->b([Landroid/widget/FrameLayout;Lgej;)V

    return-void

    :pswitch_1
    iget-object v1, v0, Ldpx;->a:Ldpy;

    iget-object v2, v0, Ldpx;->b:Landroid/view/View;

    iget-object v3, v0, Ldpx;->c:Landroid/view/View;

    iget-object v4, v0, Ldpx;->d:Landroid/view/View;

    iget-object v6, v0, Ldpx;->e:Landroid/widget/TextView;

    iget-object v7, v0, Ldpx;->f:Landroid/widget/TextView;

    iget-object v8, v0, Ldpx;->g:Landroid/widget/TextView;

    iget v13, v0, Ldpx;->h:I

    iget v14, v0, Ldpx;->i:I

    iget-object v11, v0, Ldpx;->j:Landroid/widget/ImageView;

    iget-object v12, v0, Ldpx;->k:Landroid/widget/ImageView;

    iget-object v15, v0, Ldpx;->l:Landroid/widget/ImageView;

    iget-object v10, v0, Ldpx;->m:[Landroid/widget/FrameLayout;

    invoke-static/range {p1 .. p1}, Lnom;->h(Landroid/view/View;)V

    sget-object v5, Lgej;->K:Lgej;

    iput-object v5, v1, Ldpy;->d:Lgej;

    iget-object v5, v1, Ldpy;->d:Lgej;

    invoke-static {v5, v2, v3, v4}, Ldpy;->e(Lgej;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iget-object v5, v1, Ldpy;->d:Lgej;

    move v9, v13

    move-object v2, v10

    move v10, v14

    invoke-static/range {v5 .. v10}, Ldpy;->d(Lgej;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;II)V

    iget-object v9, v1, Ldpy;->d:Lgej;

    move-object v10, v11

    move-object v11, v12

    move-object v12, v15

    invoke-static/range {v9 .. v14}, Ldpy;->c(Lgej;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;II)V

    iget-object v1, v1, Ldpy;->d:Lgej;

    invoke-static {v2, v1}, Ldpy;->b([Landroid/widget/FrameLayout;Lgej;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
