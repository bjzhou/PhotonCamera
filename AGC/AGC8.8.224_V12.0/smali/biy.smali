.class public final Lbiy;
.super Ljava/lang/Object;

# interfaces
.implements Lbjc;


# instance fields
.field public final a:Lbis;

.field public final b:Lbiz;

.field public final c:Lbiu;

.field public final d:Lbip;

.field public final e:Lbir;

.field public final f:Lbip;

.field public final g:Lbip;

.field public final h:Lbip;

.field public final i:Lbip;


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lbiy;-><init>(Lbis;Lbiz;Lbiu;Lbip;Lbir;Lbip;Lbip;Lbip;Lbip;)V

    return-void
.end method

.method public constructor <init>(Lbis;Lbiz;Lbiu;Lbip;Lbir;Lbip;Lbip;Lbip;Lbip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbiy;->a:Lbis;

    iput-object p2, p0, Lbiy;->b:Lbiz;

    iput-object p3, p0, Lbiy;->c:Lbiu;

    iput-object p4, p0, Lbiy;->d:Lbip;

    iput-object p5, p0, Lbiy;->e:Lbir;

    iput-object p6, p0, Lbiy;->h:Lbip;

    iput-object p7, p0, Lbiy;->i:Lbip;

    iput-object p8, p0, Lbiy;->f:Lbip;

    iput-object p9, p0, Lbiy;->g:Lbip;

    return-void
.end method


# virtual methods
.method public final a(Lbgj;Lbjq;)Lbgw;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()Lbif;
    .locals 1

    new-instance v0, Lbif;

    invoke-direct {v0, p0}, Lbif;-><init>(Lbiy;)V

    return-object v0
.end method
