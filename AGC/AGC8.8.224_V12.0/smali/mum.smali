.class public final Lmum;
.super Lmun;


# instance fields
.field final synthetic a:Ljava/lang/Iterable;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    iput-object p1, p0, Lmum;->a:Ljava/lang/Iterable;

    invoke-direct {p0}, Lmun;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3

    iget-object v0, p0, Lmum;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcej;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lcej;-><init>(I)V

    invoke-static {v0, v1}, Llyh;->N(Ljava/util/Iterator;Lmqi;)Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lmxg;

    invoke-direct {v1, v0}, Lmxg;-><init>(Ljava/util/Iterator;)V

    return-object v1
.end method
