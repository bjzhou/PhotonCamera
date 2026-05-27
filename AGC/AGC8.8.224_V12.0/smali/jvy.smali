.class final Ljvy;
.super Ljwi;


# instance fields
.field final synthetic a:Lmqi;

.field final synthetic b:Lmqi;


# direct methods
.method public constructor <init>(Ljwb;Lmqi;Lmqi;)V
    .locals 0

    iput-object p2, p0, Ljvy;->a:Lmqi;

    iput-object p3, p0, Ljvy;->b:Lmqi;

    invoke-direct {p0, p1}, Ljwi;-><init>(Ljwb;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljvy;->a:Lmqi;

    invoke-interface {v0, p1}, Lmqi;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljvy;->b:Lmqi;

    invoke-interface {v0, p1}, Lmqi;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
