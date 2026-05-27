.class public final Lfrz;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;

.field private final f:Loiw;

.field private final synthetic g:I


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;I)V
    .locals 0

    iput p7, p0, Lfrz;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfrz;->a:Loiw;

    iput-object p2, p0, Lfrz;->b:Loiw;

    iput-object p3, p0, Lfrz;->c:Loiw;

    iput-object p4, p0, Lfrz;->d:Loiw;

    iput-object p5, p0, Lfrz;->e:Loiw;

    iput-object p6, p0, Lfrz;->f:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;I[B)V
    .locals 0

    iput p7, p0, Lfrz;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfrz;->a:Loiw;

    iput-object p2, p0, Lfrz;->c:Loiw;

    iput-object p3, p0, Lfrz;->f:Loiw;

    iput-object p4, p0, Lfrz;->b:Loiw;

    iput-object p5, p0, Lfrz;->d:Loiw;

    iput-object p6, p0, Lfrz;->e:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Lfrz;
    .locals 9

    new-instance v8, Lfrz;

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lfrz;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;I)V

    return-object v8
.end method

.method public static b(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Lfrz;
    .locals 10

    new-instance v9, Lfrz;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Lfrz;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;I[B)V

    return-object v9
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lfrz;->g:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfrz;->a:Loiw;

    check-cast v0, Lfqh;

    invoke-virtual {v0}, Lfqh;->b()Lfsr;

    move-result-object v2

    iget-object v0, p0, Lfrz;->c:Loiw;

    check-cast v0, Lcmj;

    invoke-virtual {v0}, Lcmj;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lfrz;->f:Loiw;

    check-cast v0, Lcmj;

    invoke-virtual {v0}, Lcmj;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, p0, Lfrz;->b:Loiw;

    check-cast v0, Lcmj;

    invoke-virtual {v0}, Lcmj;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p0, Lfrz;->d:Loiw;

    check-cast v0, Lfso;

    invoke-virtual {v0}, Lfso;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, p0, Lfrz;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljvs;

    new-instance v0, Lfqk;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lfqk;-><init>(Lfsr;IIIILjvs;)V

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lfrz;->a:Loiw;

    check-cast v0, Lkao;

    invoke-virtual {v0}, Lkao;->a()Lkaq;

    move-result-object v2

    iget-object v0, p0, Lfrz;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ldhi;

    iget-object v0, p0, Lfrz;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lfqp;

    iget-object v0, p0, Lfrz;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lfpl;

    iget-object v0, p0, Lfrz;->e:Loiw;

    check-cast v0, Lfqg;

    invoke-virtual {v0}, Lfqg;->a()Lfpg;

    move-result-object v6

    iget-object v0, p0, Lfrz;->f:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lgue;

    new-instance v0, Lfry;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lfry;-><init>(Lkaq;Ldhi;Lfqp;Lfpl;Lfpg;Lgue;I[B)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
