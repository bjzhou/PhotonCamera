.class public final Lbjn;
.super Ljava/lang/Object;

# interfaces
.implements Lbjc;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lbip;

.field public final c:Ljava/util/List;

.field public final d:Lbio;

.field public final e:Lbir;

.field public final f:Lbip;

.field public final g:F

.field public final h:Z

.field public final i:I

.field public final j:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lbip;Ljava/util/List;Lbio;Lbir;Lbip;IIFZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbjn;->a:Ljava/lang/String;

    iput-object p2, p0, Lbjn;->b:Lbip;

    iput-object p3, p0, Lbjn;->c:Ljava/util/List;

    iput-object p4, p0, Lbjn;->d:Lbio;

    iput-object p5, p0, Lbjn;->e:Lbir;

    iput-object p6, p0, Lbjn;->f:Lbip;

    iput p7, p0, Lbjn;->i:I

    iput p8, p0, Lbjn;->j:I

    iput p9, p0, Lbjn;->g:F

    iput-boolean p10, p0, Lbjn;->h:Z

    return-void
.end method


# virtual methods
.method public final a(Lbgj;Lbjq;)Lbgw;
    .locals 1

    new-instance v0, Lbhl;

    invoke-direct {v0, p1, p2, p0}, Lbhl;-><init>(Lbgj;Lbjq;Lbjn;)V

    return-object v0
.end method
