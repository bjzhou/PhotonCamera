.class public final Lbjd;
.super Ljava/lang/Object;

# interfaces
.implements Lbjc;


# instance fields
.field public final a:Landroid/graphics/Path$FillType;

.field public final b:Lbiq;

.field public final c:Lbir;

.field public final d:Lbit;

.field public final e:Lbit;

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public final h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/graphics/Path$FillType;Lbiq;Lbir;Lbit;Lbit;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lbjd;->h:I

    iput-object p3, p0, Lbjd;->a:Landroid/graphics/Path$FillType;

    iput-object p4, p0, Lbjd;->b:Lbiq;

    iput-object p5, p0, Lbjd;->c:Lbir;

    iput-object p6, p0, Lbjd;->d:Lbit;

    iput-object p7, p0, Lbjd;->e:Lbit;

    iput-object p1, p0, Lbjd;->f:Ljava/lang/String;

    iput-boolean p8, p0, Lbjd;->g:Z

    return-void
.end method


# virtual methods
.method public final a(Lbgj;Lbjq;)Lbgw;
    .locals 1

    new-instance v0, Lbhb;

    invoke-direct {v0, p1, p2, p0}, Lbhb;-><init>(Lbgj;Lbjq;Lbjd;)V

    return-object v0
.end method
