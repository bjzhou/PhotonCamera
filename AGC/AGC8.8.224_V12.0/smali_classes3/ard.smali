.class public final Lard;
.super Ljava/lang/Object;

# interfaces
.implements Laqs;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Laqr;)Laqt;
    .locals 7

    new-instance v6, Larc;

    iget-object v1, p1, Laqr;->a:Landroid/content/Context;

    iget-object v2, p1, Laqr;->b:Ljava/lang/String;

    iget-object v3, p1, Laqr;->c:Laqq;

    iget-boolean v4, p1, Laqr;->d:Z

    iget-boolean v5, p1, Laqr;->e:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Larc;-><init>(Landroid/content/Context;Ljava/lang/String;Laqq;ZZ)V

    return-object v6
.end method
