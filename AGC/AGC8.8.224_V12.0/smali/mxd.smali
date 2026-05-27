.class public final Lmxd;
.super Lmzv;


# instance fields
.field final synthetic a:Lmqi;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lmqi;)V
    .locals 0

    iput-object p2, p0, Lmxd;->a:Lmqi;

    invoke-direct {p0, p1}, Lmzv;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmxd;->a:Lmqi;

    invoke-interface {v0, p1}, Lmqi;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
