.class public final Lkpq;
.super Ljava/lang/Object;


# instance fields
.field public a:Lkpm;

.field public b:J

.field public c:J

.field public d:Ljava/lang/String;

.field public e:Lkpj;

.field public f:Lmwn;

.field public g:Lmwn;

.field public h:Lmwn;

.field public i:Lmvv;

.field public j:Lkqo;

.field public k:B

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lmvv;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lkpq;->i:Lmvv;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null listeners"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(I)V
    .locals 1

    if-eqz p1, :cond_0

    iput p1, p0, Lkpq;->l:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null publishIntent"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
