.class final Ljvg;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;
.implements Ljvi;


# instance fields
.field private final a:Lkad;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkad;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljvg;->a:Lkad;

    iput-object p2, p0, Ljvg;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljvg;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Ljvg;->a:Lkad;

    invoke-interface {v0}, Lkad;->close()V

    return-void
.end method
