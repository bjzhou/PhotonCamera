.class final Lmxm;
.super Lmzw;


# instance fields
.field final synthetic a:Lmxn;


# direct methods
.method public constructor <init>(Lmxn;Ljava/util/ListIterator;)V
    .locals 0

    iput-object p1, p0, Lmxm;->a:Lmxn;

    invoke-direct {p0, p2}, Lmzw;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmxm;->a:Lmxn;

    iget-object v0, v0, Lmxn;->b:Lmqi;

    invoke-interface {v0, p1}, Lmqi;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
