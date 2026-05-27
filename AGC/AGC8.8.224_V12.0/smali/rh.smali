.class public final Lrh;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lvb;

.field private final b:I


# direct methods
.method public constructor <init>(Lrf;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lri;->a:Loon;

    invoke-virtual {v0}, Loon;->b()I

    move-result v0

    iput v0, p0, Lrh;->b:I

    new-instance v2, Lbkb;

    invoke-direct {v2, p1}, Lbkb;-><init>(Lrf;)V

    new-instance v3, Loxq;

    const/4 p1, 0x0

    invoke-direct {v3, p1}, Loxq;-><init>([B)V

    new-instance p1, Lvg;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lvg;-><init>(Lbkb;Loxq;[B[B[B[B[B)V

    iput-object p1, p0, Lrh;->a:Lvb;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraPipe-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lrh;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
