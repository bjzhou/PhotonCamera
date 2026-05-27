.class public final Lbvn;
.super Ljava/lang/Object;

# interfaces
.implements Lbuz;


# static fields
.field public static final a:Lbqe;


# instance fields
.field private final b:Lbkc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9c4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout"

    invoke-static {v1, v0}, Lbqe;->c(Ljava/lang/String;Ljava/lang/Object;)Lbqe;

    move-result-object v0

    sput-object v0, Lbvn;->a:Lbqe;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Lbvn;-><init>(Lbkc;[B[B[B)V

    return-void
.end method

.method public constructor <init>(Lbkc;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbvn;->b:Lbkc;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lbuq;

    const/4 p1, 0x1

    return p1
.end method

.method public final bridge synthetic b(Ljava/lang/Object;IILbqf;)Lva;
    .locals 0

    check-cast p1, Lbuq;

    iget-object p2, p0, Lbvn;->b:Lbkc;

    invoke-static {p1}, Lbuy;->b(Ljava/lang/Object;)Lbuy;

    move-result-object p3

    iget-object p2, p2, Lbkc;->a:Ljava/lang/Object;

    check-cast p2, Lcas;

    invoke-virtual {p2, p3}, Lcas;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3}, Lbuy;->a()V

    check-cast p2, Lbuq;

    if-nez p2, :cond_0

    iget-object p2, p0, Lbvn;->b:Lbkc;

    invoke-static {p1}, Lbuy;->b(Ljava/lang/Object;)Lbuy;

    move-result-object p3

    iget-object p2, p2, Lbkc;->a:Ljava/lang/Object;

    check-cast p2, Lcas;

    invoke-virtual {p2, p3, p1}, Lcas;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    sget-object p2, Lbvn;->a:Lbqe;

    invoke-virtual {p4, p2}, Lbqf;->b(Lbqe;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    new-instance p3, Lva;

    new-instance p4, Lbqx;

    invoke-direct {p4, p1, p2}, Lbqx;-><init>(Lbuq;I)V

    invoke-direct {p3, p1, p4}, Lva;-><init>(Lbqb;Lbqo;)V

    return-object p3
.end method
