.class public final Ljxj;
.super Ljava/lang/Object;

# interfaces
.implements Ljxh;


# instance fields
.field private final a:Ljxp;


# direct methods
.method public constructor <init>(Ljxp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljxj;->a:Ljxp;

    return-void
.end method


# virtual methods
.method public final a(Ljwu;Lkll;ZLmqp;Lmqp;ZZ)Lmqp;
    .locals 0

    iget-object p2, p0, Ljxj;->a:Ljxp;

    iget-object p2, p2, Ljxp;->j:Ljxl;

    if-nez p2, :cond_0

    sget-object p1, Lmpx;->a:Lmpx;

    return-object p1

    :cond_0
    iget p6, p2, Ljxl;->g:I

    invoke-static {p6, p1, p3, p4, p5}, Ljyx;->h(ILjwu;ZLmqp;Lmqp;)I

    move-result p1

    const/4 p4, 0x2

    const/4 p5, 0x1

    if-eqz p3, :cond_2

    invoke-static {p2}, Ljxl;->b(Ljxl;)Ljxk;

    move-result-object p2

    const/4 p3, 0x5

    invoke-virtual {p2, p3}, Ljxk;->i(I)V

    if-eq p5, p7, :cond_1

    const/4 p4, 0x1

    goto :goto_0

    :cond_1
    :goto_0
    invoke-virtual {p2, p4}, Ljxk;->k(I)V

    const/high16 p3, 0x10000

    invoke-virtual {p2, p3}, Ljxk;->j(I)V

    invoke-virtual {p2, p1}, Ljxk;->h(I)V

    invoke-virtual {p2}, Ljxk;->a()Ljxl;

    move-result-object p1

    goto :goto_2

    :cond_2
    invoke-static {p2}, Ljxl;->b(Ljxl;)Ljxk;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljxk;->i(I)V

    if-eq p5, p7, :cond_3

    const/16 p3, 0x8

    goto :goto_1

    :cond_3
    const/16 p3, 0x10

    :goto_1
    invoke-virtual {p2, p3}, Ljxk;->k(I)V

    const p3, 0x8000

    invoke-virtual {p2, p3}, Ljxk;->j(I)V

    invoke-virtual {p2, p1}, Ljxk;->h(I)V

    invoke-virtual {p2}, Ljxk;->a()Ljxl;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    return-object p1
.end method
