.class public final Lamh;
.super Lalr;


# static fields
.field public static final a:Lalt;


# instance fields
.field public final b:Lxg;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lamg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lamg;-><init>(I)V

    sput-object v0, Lamh;->a:Lalt;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lalr;-><init>()V

    new-instance v0, Lxg;

    invoke-direct {v0}, Lxg;-><init>()V

    iput-object v0, p0, Lamh;->b:Lxg;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lamh;->c:Z

    return-void
.end method


# virtual methods
.method public final a(I)Lame;
    .locals 1

    iget-object v0, p0, Lamh;->b:Lxg;

    invoke-static {v0, p1}, Lxh;->a(Lxg;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lame;

    return-object p1
.end method

.method final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lamh;->c:Z

    return-void
.end method

.method public final d()V
    .locals 6

    iget-object v0, p0, Lamh;->b:Lxg;

    invoke-virtual {v0}, Lxg;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lamh;->b:Lxg;

    invoke-virtual {v3, v2}, Lxg;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lame;

    invoke-virtual {v3}, Lame;->j()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lamh;->b:Lxg;

    iget v2, v0, Lxg;->d:I

    iget-object v3, v0, Lxg;->c:[Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iput v1, v0, Lxg;->d:I

    iput-boolean v1, v0, Lxg;->a:Z

    return-void
.end method
