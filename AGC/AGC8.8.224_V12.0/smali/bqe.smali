.class public final Lbqe;
.super Ljava/lang/Object;


# static fields
.field private static final e:Lbqd;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lbqd;

.field public final c:Ljava/lang/String;

.field public volatile d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbqc;

    invoke-direct {v0}, Lbqc;-><init>()V

    sput-object v0, Lbqe;->e:Lbqd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lbqd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lbze;->s(Ljava/lang/String;)V

    iput-object p1, p0, Lbqe;->c:Ljava/lang/String;

    iput-object p2, p0, Lbqe;->a:Ljava/lang/Object;

    invoke-static {p3}, Lbze;->v(Ljava/lang/Object;)V

    iput-object p3, p0, Lbqe;->b:Lbqd;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Lbqd;)Lbqe;
    .locals 1

    new-instance v0, Lbqe;

    invoke-direct {v0, p0, p1, p2}, Lbqe;-><init>(Ljava/lang/String;Ljava/lang/Object;Lbqd;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lbqe;
    .locals 3

    new-instance v0, Lbqe;

    const/4 v1, 0x0

    sget-object v2, Lbqe;->e:Lbqd;

    invoke-direct {v0, p0, v1, v2}, Lbqe;-><init>(Ljava/lang/String;Ljava/lang/Object;Lbqd;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Object;)Lbqe;
    .locals 2

    new-instance v0, Lbqe;

    sget-object v1, Lbqe;->e:Lbqd;

    invoke-direct {v0, p0, p1, v1}, Lbqe;-><init>(Ljava/lang/String;Ljava/lang/Object;Lbqd;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lbqe;

    if-eqz v0, :cond_0

    check-cast p1, Lbqe;

    iget-object v0, p0, Lbqe;->c:Ljava/lang/String;

    iget-object p1, p1, Lbqe;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lbqe;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lbqe;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Option{key=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
