.class final Lmwr;
.super Lmvz;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final a:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Lmws;)V
    .locals 0

    invoke-direct {p0, p1}, Lmvz;-><init>(Lmwa;)V

    invoke-virtual {p1}, Lmws;->comparator()Ljava/util/Comparator;

    move-result-object p1

    iput-object p1, p0, Lmwr;->a:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(I)Lmvw;
    .locals 1

    new-instance p1, Lmwq;

    iget-object v0, p0, Lmwr;->a:Ljava/util/Comparator;

    invoke-direct {p1, v0}, Lmwq;-><init>(Ljava/util/Comparator;)V

    return-object p1
.end method
