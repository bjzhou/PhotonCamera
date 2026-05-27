.class public final synthetic Liaz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Libg;

.field public final synthetic b:Lika;

.field public final synthetic c:Ljava/lang/Runnable;

.field public final synthetic d:Libf;

.field public final synthetic e:Libc;


# direct methods
.method public synthetic constructor <init>(Libg;Lika;Ljava/lang/Runnable;Libf;Libc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liaz;->a:Libg;

    iput-object p2, p0, Liaz;->b:Lika;

    iput-object p3, p0, Liaz;->c:Ljava/lang/Runnable;

    iput-object p4, p0, Liaz;->d:Libf;

    iput-object p5, p0, Liaz;->e:Libc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Liaz;->a:Libg;

    iget-object v1, p0, Liaz;->b:Lika;

    iget-object v2, p0, Liaz;->c:Ljava/lang/Runnable;

    iget-object v3, p0, Liaz;->d:Libf;

    iget-object v4, p0, Liaz;->e:Libc;

    invoke-virtual {v0, v1, v2, v3, v4}, Libg;->p(Lika;Ljava/lang/Runnable;Libf;Libc;)V

    return-void
.end method
