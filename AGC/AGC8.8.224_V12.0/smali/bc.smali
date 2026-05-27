.class final Lbc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldl;

.field final synthetic b:Ldl;

.field final synthetic c:Z

.field final synthetic d:Lwy;


# direct methods
.method public constructor <init>(Ldl;Ldl;ZLwy;)V
    .locals 0

    iput-object p1, p0, Lbc;->a:Ldl;

    iput-object p2, p0, Lbc;->b:Ldl;

    iput-boolean p3, p0, Lbc;->c:Z

    iput-object p4, p0, Lbc;->d:Lwy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lbc;->a:Ldl;

    iget-object v0, v0, Ldl;->a:Lbw;

    iget-object v1, p0, Lbc;->b:Ldl;

    iget-object v1, v1, Ldl;->a:Lbw;

    iget-boolean v2, p0, Lbc;->c:Z

    iget-object v3, p0, Lbc;->d:Lwy;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcy;->a(Lbw;Lbw;ZLwy;Z)V

    return-void
.end method
