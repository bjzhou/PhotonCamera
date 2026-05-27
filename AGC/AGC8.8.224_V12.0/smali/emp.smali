.class public final Lemp;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lemp;

.field public static final b:Lemp;

.field public static final c:Lemp;

.field public static final d:Lemp;

.field public static final e:Lemp;

.field public static final f:Lemp;

.field public static final g:Lemp;

.field public static final h:Lemp;

.field public static final i:Lemp;


# instance fields
.field public final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lemp;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lemp;-><init>(I)V

    sput-object v0, Lemp;->a:Lemp;

    new-instance v0, Lemp;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lemp;-><init>(I)V

    sput-object v0, Lemp;->b:Lemp;

    new-instance v0, Lemp;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lemp;-><init>(I)V

    sput-object v0, Lemp;->c:Lemp;

    new-instance v0, Lemp;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lemp;-><init>(I)V

    sput-object v0, Lemp;->d:Lemp;

    new-instance v0, Lemp;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lemp;-><init>(I)V

    sput-object v0, Lemp;->e:Lemp;

    new-instance v0, Lemp;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lemp;-><init>(I)V

    sput-object v0, Lemp;->f:Lemp;

    new-instance v0, Lemp;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lemp;-><init>(I)V

    sput-object v0, Lemp;->g:Lemp;

    new-instance v0, Lemp;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lemp;-><init>(I)V

    sput-object v0, Lemp;->h:Lemp;

    new-instance v0, Lemp;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Lemp;-><init>(I)V

    sput-object v0, Lemp;->i:Lemp;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lemp;->j:I

    return-void
.end method
