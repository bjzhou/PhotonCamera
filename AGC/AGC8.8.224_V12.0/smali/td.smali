.class public final Ltd;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ltl;

.field public final b:Ljava/util/Map;

.field public final c:Lsb;

.field public final d:Ldqx;

.field private final e:I


# direct methods
.method public constructor <init>(Ltl;Ldqx;Ljava/util/Map;Lsb;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltd;->a:Ltl;

    iput-object p2, p0, Ltd;->d:Ldqx;

    iput-object p3, p0, Ltd;->b:Ljava/util/Map;

    iput-object p4, p0, Ltd;->c:Lsb;

    sget-object p1, Lte;->a:Loon;

    invoke-virtual {p1}, Loon;->b()I

    move-result p1

    iput p1, p0, Ltd;->e:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera2RequestProcessor-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltd;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
