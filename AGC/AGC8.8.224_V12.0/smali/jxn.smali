.class public final Ljxn;
.super Ljava/lang/Object;

# interfaces
.implements Ljxh;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Ljxn;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljwu;Lkll;ZLmqp;Lmqp;ZZ)Lmqp;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p7

    move-object/from16 v6, p0

    iget v7, v6, Ljxn;->a:I

    const v8, 0xbb80

    const v9, 0x2ee00

    const/4 v10, 0x3

    const/high16 v11, 0x10000

    const v12, 0x8000

    const/4 v13, 0x5

    const/4 v14, 0x2

    const/4 v15, 0x1

    packed-switch v7, :pswitch_data_0

    invoke-static/range {p1 .. p1}, Ljxg;->a(Ljwu;)Ljxg;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v7}, Ljyx;->f(Lkll;Ljxg;)Ljxl;

    move-result-object v1

    iget v7, v1, Ljxl;->g:I

    invoke-static {v7, v0, v2, v3, v4}, Ljyx;->h(ILjwu;ZLmqp;Lmqp;)I

    move-result v0

    if-eqz v2, :cond_5

    invoke-static {v1}, Ljxl;->b(Ljxl;)Ljxk;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljxk;->i(I)V

    if-eq v15, v5, :cond_4

    goto :goto_3

    :pswitch_0
    invoke-static/range {p1 .. p1}, Ljxi;->a(Ljwu;)Ljxi;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v7}, Ljyx;->g(Lkll;Ljxi;)Ljxl;

    move-result-object v1

    iget v7, v1, Ljxl;->g:I

    invoke-static {v7, v0, v2, v3, v4}, Ljyx;->h(ILjwu;ZLmqp;Lmqp;)I

    move-result v0

    if-nez v2, :cond_1

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljxl;->b(Ljxl;)Ljxk;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljxk;->i(I)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljxk;->k(I)V

    invoke-virtual {v1, v12}, Ljxk;->j(I)V

    invoke-virtual {v1, v0}, Ljxk;->h(I)V

    invoke-virtual {v1}, Ljxk;->a()Ljxl;

    move-result-object v0

    goto :goto_2

    :cond_1
    :goto_0
    invoke-static {v1}, Ljxl;->b(Ljxl;)Ljxk;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljxk;->i(I)V

    if-eq v15, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v15, 0x2

    :goto_1
    invoke-virtual {v1, v15}, Ljxk;->k(I)V

    invoke-virtual {v1, v11}, Ljxk;->j(I)V

    invoke-virtual {v1, v0}, Ljxk;->h(I)V

    invoke-virtual {v1}, Ljxk;->a()Ljxl;

    move-result-object v0

    :goto_2
    if-eqz p6, :cond_3

    invoke-static {v0}, Ljxl;->b(Ljxl;)Ljxk;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljxk;->d(I)V

    invoke-virtual {v0, v14}, Ljxk;->c(I)V

    invoke-virtual {v0, v9}, Ljxk;->b(I)V

    invoke-virtual {v0, v8}, Ljxk;->e(I)V

    invoke-virtual {v0}, Ljxk;->a()Ljxl;

    move-result-object v0

    :cond_3
    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v15, 0x2

    :goto_3
    invoke-virtual {v1, v15}, Ljxk;->k(I)V

    invoke-virtual {v1, v11}, Ljxk;->j(I)V

    invoke-virtual {v1, v0}, Ljxk;->h(I)V

    invoke-virtual {v1}, Ljxk;->a()Ljxl;

    move-result-object v0

    goto :goto_5

    :cond_5
    invoke-static {v1}, Ljxl;->b(Ljxl;)Ljxk;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljxk;->i(I)V

    if-eq v15, v5, :cond_6

    goto :goto_4

    :cond_6
    const/16 v15, 0x10

    :goto_4
    invoke-virtual {v1, v15}, Ljxk;->k(I)V

    invoke-virtual {v1, v12}, Ljxk;->j(I)V

    invoke-virtual {v1, v0}, Ljxk;->h(I)V

    invoke-virtual {v1}, Ljxk;->a()Ljxl;

    move-result-object v0

    :goto_5
    if-eqz p6, :cond_7

    invoke-static {v0}, Ljxl;->b(Ljxl;)Ljxk;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljxk;->d(I)V

    invoke-virtual {v0, v14}, Ljxk;->c(I)V

    invoke-virtual {v0, v9}, Ljxk;->b(I)V

    invoke-virtual {v0, v8}, Ljxk;->e(I)V

    invoke-virtual {v0}, Ljxk;->a()Ljxl;

    move-result-object v0

    :cond_7
    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
