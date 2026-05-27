.class abstract Lmnh;
.super Lmnc;


# instance fields
.field private final a:Lmno;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/UUID;Lmno;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmnc;-><init>(Ljava/lang/String;Ljava/util/UUID;)V

    iget-boolean p1, p3, Lmno;->b:Z

    invoke-static {p1}, Lmoz;->e(Z)V

    iput-object p3, p0, Lmnh;->a:Lmno;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmnt;Lmno;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmnc;-><init>(Ljava/lang/String;Lmnt;)V

    iget-boolean p1, p3, Lmno;->b:Z

    invoke-static {p1}, Lmoz;->e(Z)V

    iput-object p3, p0, Lmnh;->a:Lmno;

    return-void
.end method


# virtual methods
.method public final f()Lmno;
    .locals 1

    iget-object v0, p0, Lmnh;->a:Lmno;

    return-object v0
.end method
