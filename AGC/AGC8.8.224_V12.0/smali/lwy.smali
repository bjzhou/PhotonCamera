.class public final Llwy;
.super Llww;


# instance fields
.field public final a:Lapt;


# direct methods
.method public constructor <init>(Lapt;)V
    .locals 0

    invoke-direct {p0}, Llww;-><init>()V

    iput-object p1, p0, Llwy;->a:Lapt;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/List;Loku;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Llwy;->a:Lapt;

    new-instance v1, Llwx;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Llwx;-><init>(Llwy;Ljava/util/List;Ljava/util/List;I)V

    invoke-static {v0, v1, p3}, Laeo;->i(Lapt;Lomk;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/util/List;Llvk;Lnyy;Loku;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Llwy;->a:Lapt;

    new-instance v7, Llyr;

    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Llyr;-><init>(Llwy;Ljava/util/List;Llvk;Lnyy;I)V

    invoke-static {v0, v7, p4}, Ladr;->c(Lapt;Ljava/util/concurrent/Callable;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/util/List;Llvk;Loku;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Llwy;->a:Lapt;

    new-instance v1, Llwi;

    const/4 v2, 0x4

    invoke-direct {v1, p0, p1, p2, v2}, Llwi;-><init>(Llwy;Ljava/util/List;Llvk;I)V

    invoke-static {v0, v1, p3}, Ladr;->c(Lapt;Ljava/util/concurrent/Callable;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
